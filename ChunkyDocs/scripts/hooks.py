import math
from mkdocs.structure.nav import (
    Navigation as MkDocsNavigation,
    Section as MkDocsSection
)
from mkdocs.structure.pages import Page
from mkdocs.utils import meta
from pathlib import Path

# Drop pages that don't apply to the chunky version the docs are built for
def on_post_page(output, page, config):
    if should_include(page.meta, config):
        return output
    return ""

# Remove pages from the navigation, too
def on_nav(nav, config, files):
    items = get_included_items(nav, config)
    return MkDocsNavigation(items, get_by_type(items, Page))

def get_included_items(items, config):
    ret = []
    for item in items:
        if isinstance(item, Page):
            page_meta = meta.get_data(Path('./docs/' + item.file.src_uri).read_text())[1]
            if should_include(page_meta, config):
                ret.append(item)
        elif isinstance(item, MkDocsSection):
            children = get_included_items(item.children, config)
            item.children = children
            if len(children) > 0:
                ret.append(item)
        else:
            ret.append(item)
    return ret

def should_include(pageMeta, config):
    minVersion = pageMeta.get("min_chunky_version", -math.inf)
    maxVersion = pageMeta.get("max_chunky_version", math.inf)
    buildVersion = config.extra["chunky"]

    return minVersion <= buildVersion <= maxVersion

# Copy of mkdocs.structure.nav._get_by_type
def get_by_type(nav, T):
    ret = []
    for item in nav:
        if isinstance(item, T):
            ret.append(item)
        if item.children:
            ret.extend(get_by_type(item.children, T))
    return ret
