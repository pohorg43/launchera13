.class public final Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "SystemAutoRotateHelper"


# instance fields
.field private autoRotateOn:Z

.field private context:Landroid/content/Context;

.field private registered:Z

.field private final systemAutoRotateObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$systemAutoRotateObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$systemAutoRotateObserver$1;-><init>(Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->systemAutoRotateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static final synthetic access$updateAutoRotateSetting(Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->updateAutoRotateSetting()V

    return-void
.end method

.method private final register()V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->registered:Z

    const-string v1, "register: registered = "

    const-string v2, "SystemAutoRotateHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->registered:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->registered:Z

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->context:Landroid/content/Context;

    if-nez v0, :cond_16

    goto :goto_29

    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->systemAutoRotateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->updateAutoRotateSetting()V

    :goto_29
    return-void
.end method

.method private final unregister()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->registered:Z

    const-string v1, "unregister: registered = "

    const-string v2, "SystemAutoRotateHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->registered:Z

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->registered:Z

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->context:Landroid/content/Context;

    if-nez v0, :cond_16

    goto :goto_1f

    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->systemAutoRotateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_1f
    return-void
.end method

.method private final updateAutoRotateSetting()V
    .registers 4

    const-string v0, "SystemAutoRotateHelper"

    const-string v1, "updateAutoRotateSetting()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->context:Landroid/content/Context;

    if-nez v0, :cond_c

    goto :goto_1d

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->autoRotateOn:Z

    :goto_1d
    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SystemAutoRotateHelper"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->register()V

    return-void
.end method

.method public final isAutoRotateOn()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->autoRotateOn:Z

    return p0
.end method

.method public final release()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->unregister()V

    return-void
.end method
