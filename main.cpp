#include <stdio.h>
#include <ares.h>

int main()
{
    ares_library_init(ARES_LIB_INIT_ALL);
    ares_channel channel;
    ares_options options;
    int optmask = 0;
    int code = ares_init_options(&channel, &options, optmask);
    if (code == ARES_SUCCESS) {
        ares_destroy(channel);
    }
    ares_library_cleanup();
    return 0;
}
