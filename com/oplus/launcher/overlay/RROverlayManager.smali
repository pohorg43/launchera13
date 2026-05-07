.class public final Lcom/oplus/launcher/overlay/RROverlayManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;,
        Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;
    }
.end annotation


# static fields
.field private static final AVAILABLE_CHECK_DURATION:J = 0xc8L

.field private static final AVAILABLE_CHECK_MAX_NUM:I = 0x64

.field public static final INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

.field private static final TAG:Ljava/lang/String; = "RROverlayManager"

.field private static final availableCheckTask:Lcom/oplus/launcher/overlay/RROverlayManager$availableCheckTask$1;

.field private static final mAvailableCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mAvailableCheckNum:I

.field private static final mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHandler:Landroid/os/Handler;

.field private static mIsOverlayEnable:Z

.field private static mOverlayManager:Landroid/content/om/OverlayManager;

.field private static final mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

.field private static mPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-direct {v0}, Lcom/oplus/launcher/overlay/RROverlayManager;-><init>()V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCallbacks:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayPackageTablet;

    invoke-direct {v0}, Lcom/oplus/launcher/overlay/RROverlayPackageTablet;-><init>()V

    goto :goto_34

    :cond_23
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen;

    invoke-direct {v0}, Lcom/oplus/launcher/overlay/RROverlayPackageFoldScreen;-><init>()V

    goto :goto_34

    :cond_2f
    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    invoke-direct {v0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;-><init>()V

    :goto_34
    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayManager$availableCheckTask$1;

    invoke-direct {v0}, Lcom/oplus/launcher/overlay/RROverlayManager$availableCheckTask$1;-><init>()V

    sput-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->availableCheckTask:Lcom/oplus/launcher/overlay/RROverlayManager$availableCheckTask$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkAvailable(Lcom/oplus/launcher/overlay/RROverlayManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->checkAvailable()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMAvailableCheckNum$p()I
    .registers 1

    sget v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCheckNum:I

    return v0
.end method

.method public static final synthetic access$getMChangeListeners$p()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getMHandler$p()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getMOverlayPackage$p()Lcom/oplus/launcher/overlay/RROverlayPackageNone;
    .registers 1

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    return-object v0
.end method

.method public static final synthetic access$setMAvailableCheckNum$p(I)V
    .registers 1

    sput p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCheckNum:I

    return-void
.end method

.method private final checkAvailable()Z
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string v0, "checkAvailable enable = "

    const-string v1, ", mIsOverlayEnable = "

    invoke-static {v0, p0, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/oplus/launcher/overlay/RROverlayManager;->mIsOverlayEnable:Z

    const-string v2, "RROverlayManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p0, :cond_43

    sget-boolean p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mIsOverlayEnable:Z

    const/4 v0, 0x1

    if-nez p0, :cond_42

    sput-boolean v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mIsOverlayEnable:Z

    const-string p0, "checkAvailable notify overlay available!"

    invoke-static {v2, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCallbacks:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;

    invoke-interface {v1}, Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;->onOverlayAvailable()V

    goto :goto_32

    :cond_42
    return v0

    :cond_43
    sget-boolean p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mIsOverlayEnable:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_51

    sput-boolean v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mIsOverlayEnable:Z

    sput v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCheckNum:I

    const-string p0, "checkAvailable notify overlay unavailable!"

    invoke-static {v2, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    return v0
.end method

.method private final getOverlayInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/content/om/OverlayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayManager;

    if-nez v0, :cond_11

    const/4 p1, 0x0

    goto :goto_1b

    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    :goto_1b
    const-string v0, "\nOverlay Info:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_23

    goto :goto_3d

    :cond_23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayInfo;

    const-string v1, "\n    "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getOverlayStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "contextUser = "

    invoke-static {p1, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/oplus/launcher/overlay/RROverlayManager;->getOverlayInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tAssets path: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p0

    const-string p1, "assets"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    const/4 v1, 0x0

    :goto_55
    if-ge v1, p1, :cond_69

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n\t\t"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->mPackageName:Ljava/lang/String;

    const-string v1, "init(), mPackageName="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/launcher/overlay/RROverlayManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentOverlayPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RROverlayManager"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->needDynamicOverlay()Z

    move-result v1

    if-nez v1, :cond_37

    return-void

    :cond_37
    const-class v1, Landroid/content/om/OverlayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayManager;

    sput-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {v2, p0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->init(Landroid/content/Context;)V

    invoke-direct {v0, p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->registerOverlayBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method private final registerOverlayBroadcast(Landroid/content/Context;)V
    .registers 4

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->needDynamicOverlay()Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    new-instance v0, Lcom/oplus/launcher/overlay/RROverlayManager$registerOverlayBroadcast$1;

    invoke-direct {v0}, Lcom/oplus/launcher/overlay/RROverlayManager$registerOverlayBroadcast$1;-><init>()V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final addAvailableCallback(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;)V
    .registers 3

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final checkDynamicEnabledState()V
    .registers 1

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->checkDynamicEnabledState()V

    return-void
.end method

.method public final checkOverlayStatus()V
    .registers 5

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/launcher/overlay/RROverlayManager;->hasOverlayAssets(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "checkOverlayStatus hasAssets: "

    const-string v3, ", Overlay Info: "

    invoke-static {v2, v1, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/oplus/launcher/overlay/RROverlayManager;->getOverlayInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RROverlayManager"

    invoke-static {v2, p0, v0}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2d

    const-string p0, "checkOverlayStatus, LauncherResourceOverlay not available"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    invoke-virtual {v0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->needOverlay()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/oplus/launcher/overlay/RROverlayManager;->getOverlayStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentOverlayPackage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->getOverlayInfos()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/om/OverlayInfo;

    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_28
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    iget-object v1, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_49
    invoke-static {p0}, Lz2/r;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getOverlayInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayManager:Landroid/content/om/OverlayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    move-object p0, v0

    goto :goto_f

    :cond_7
    sget-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->mPackageName:Ljava/lang/String;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    :goto_f
    if-nez p0, :cond_12

    return-object v0

    :cond_12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOverlayInfos(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isMutable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Landroid/content/om/OverlayInfo;->isMutable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFabricated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", baseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RROverlayManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_61
    return-object p0
.end method

.method public final hasOverlayAssets(Landroid/content/Context;)Z
    .registers 7

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p0

    const-string p1, "assets"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, p1, :cond_34

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.debugName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const-string v4, "LauncherResourceOverlay.apk"

    invoke-static {v2, v4, v0, v3}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_34
    return v0
.end method

.method public final initOverlayState()V
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mIsOverlayEnable:Z

    const-string v0, "initOverlayState mIsOverlayEnable = "

    const-string v1, "RROverlayManager"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final registerChangedListener(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method public final removeAvailableCallback(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;)V
    .registers 2

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setEnableSafely(Ljava/lang/String;Z)V
    .registers 5

    const-string p0, "RROverlayManager"

    :try_start_2
    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/EffectiveCompositionCache;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableSafely(), overlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayManager:Landroid/content/om/OverlayManager;

    if-nez v0, :cond_2b

    const/4 p1, 0x0

    goto :goto_3a

    :cond_2b
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/om/OverlayManager;->setEnabled(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_3a
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_49

    const-string p2, "setEnableSafely(), fail reason="

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method public final startCheckAvailable()V
    .registers 4

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mOverlayPackage:Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    invoke-virtual {v0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->needOverlay()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget v0, Lcom/oplus/launcher/overlay/RROverlayManager;->mAvailableCheckNum:I

    const-string v1, "startCheckAvailable, checkNum = "

    const-string v2, "RROverlayManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->checkAvailable()Z

    move-result p0

    if-nez p0, :cond_24

    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->availableCheckTask:Lcom/oplus/launcher/overlay/RROverlayManager$availableCheckTask$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    return-void
.end method

.method public final unregisterChangedListener(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object p0, Lcom/oplus/launcher/overlay/RROverlayManager;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
