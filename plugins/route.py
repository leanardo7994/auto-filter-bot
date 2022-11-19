#@iryme






from aiohttp import web

routes = web.RouteTableDef()

@routes.get("/", allow_head=True)
async def root_route_handler(request):
    return web.Response(text="Don't Forget To Join @iPrimeHub Channel")
