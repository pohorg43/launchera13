.class public final Lcom/android/common/util/VRRServiceHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/VRRServiceHelper$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/VRRServiceHelper$INSTANCE;

.field private static final OPLUS_VRR_SERVICE:Ljava/lang/String; = "oplus_vrr_service"

.field private static final OPLUS_VRR_SERVICE_INTERFACE:Ljava/lang/String; = "com.oplus.vrr.IOPlusRefreshRate"

.field private static final OPLUS_VRR_SERVICE_TRANSACT_CODE:I = 0x23

.field private static final TAG:Ljava/lang/String; = "VRRServiceHelper"


# instance fields
.field private final vrrService$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/VRRServiceHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/VRRServiceHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/VRRServiceHelper;->INSTANCE:Lcom/android/common/util/VRRServiceHelper$INSTANCE;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/common/util/VRRServiceHelper$vrrService$2;->INSTANCE:Lcom/android/common/util/VRRServiceHelper$vrrService$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/VRRServiceHelper;->vrrService$delegate:Ly2/e;

    return-void
.end method

.method public static synthetic a(Lcom/android/common/util/VRRServiceHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/VRRServiceHelper;->notifyLauncherEvent$lambda-2(Lcom/android/common/util/VRRServiceHelper;)V

    return-void
.end method

.method private final getVrrService()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/VRRServiceHelper;->vrrService$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method private static final notifyLauncherEvent$lambda-2(Lcom/android/common/util/VRRServiceHelper;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/common/util/VRRServiceHelper;->getVrrService()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "notifyLauncherEvent: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VRRServiceHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v2, "com.oplus.vrr.IOPlusRefreshRate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Lcom/android/common/util/VRRServiceHelper;->getVrrService()Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_2a

    goto :goto_30

    :cond_2a
    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    :goto_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_36

    goto :goto_3b

    :catchall_36
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3b
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_42

    goto :goto_4c

    :cond_42
    const-string/jumbo v0, "notifyGestureExit failure, e="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    return-void
.end method


# virtual methods
.method public final notifyLauncherEvent()V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isNotifyDisplayGestureToHome()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/common/util/VRRServiceHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method
