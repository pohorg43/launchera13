.class Lcom/oplus/tingle/ipc/utils/Logger$LoggerObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tingle/ipc/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggerObserver"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/oplus/tingle/ipc/utils/Logger$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/tingle/ipc/utils/Logger$LoggerObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    const-string p0, "persist.sys.assert.panic"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/tingle/ipc/utils/Logger;->access$002(Z)Z

    return-void
.end method
