.class public final Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;
.super Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;,
        Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"


# instance fields
.field private mZoomWindowChange:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->Companion:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputMethodChanged(Z)V
    .registers 2

    const-string p0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string p1, "onInputMethodChanged"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomWindowDied(Ljava/lang/String;)V
    .registers 2

    const-string p0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string p1, "onZoomWindowDied"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 4

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "onZoomWindowHide"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;

    if-eqz p0, :cond_11

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;->onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    :cond_11
    return-void
.end method

.method public onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 4

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "onZoomWindowShow"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;

    if-eqz p0, :cond_25

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;->onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    const-string p0, "Hotseat_expand"

    const-string p1, "onZoomWindowShow to updateDockerRecentTaskData"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "getAppContext()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;Z)V

    :cond_25
    return-void
.end method

.method public final registerZoomWindowObserver()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    :try_end_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "registerZoomWindowObserver with an exception"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method public final setZoomWindowChange(Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;

    return-void
.end method

.method public final unregisterZoomWindowObserver()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    :try_end_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "unregisterZoomWindowObserver with an exception"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method
