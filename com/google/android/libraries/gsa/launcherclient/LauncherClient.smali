.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONNECT_REASON_ASSI_APP_STATUS:Ljava/lang/String; = "assiAppStatusChange"

.field public static final CONNECT_REASON_CHILDREN_MODE:Ljava/lang/String; = "childrenMode"

.field public static final CONNECT_REASON_FINISH_BINDING:Ljava/lang/String; = "finishBindingItems"

.field public static final CONNECT_REASON_ON_START:Ljava/lang/String; = "onStart"

.field public static final CONNECT_REASON_RECONNECT:Ljava/lang/String; = "reconnect"

.field public static final CONNECT_REASON_SWITCH:Ljava/lang/String; = "switch"

.field public static final CONNECT_REASON_USER_UNLOCK:Ljava/lang/String; = "userUnlock"

.field private static final DEBUG:Z = false

.field private static final DELAY_RECONNECT_WHEN_ASSIS_STATUS_CHANGE:I = 0x7d0

.field private static final DELAY_RECONNECT_WHEN_SERVICE_DISCONNECT:I = 0x1f4

.field private static final DISABLE_ASSISTANT_SCREEN:Ljava/lang/String; = "disable_assistant_screen"

.field private static final EXTRA_CLIENT_OPTIONS:Ljava/lang/String; = "client_options"

.field private static final EXTRA_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final EXTRA_LAYOUT_PARAMS:Ljava/lang/String; = "layout_params"

.field private static final KEY_SERVICE_API_VERSION:Ljava/lang/String; = "service.api.version"

.field public static final SERVICE_STATE_CONNECTED:I = 0x1

.field private static final SERVICE_STATE_DISCONNECTED:I = 0x0

.field private static final SETTING_CHILDREN_MODE:Ljava/lang/String; = "children_mode_on"

.field public static final TAG:Ljava/lang/String; = "LauncherClient"

.field private static sApiVersion:I = -0x1


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mActivityState:I

.field public mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

.field public mAssistScreenSettingsOn:Z

.field public mAssistScreenShowing:Z

.field private mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

.field public mDestroyed:Z

.field public mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

.field private mDragInterfaceManager:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

.field public mFlags:I

.field private mIdPreload:Z

.field private mIsLandscape:Z

.field private mIsMultiWindowMode:Z

.field private mIsScrolling:Z

.field public final mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

.field private mOverlay:Lcom/android/overlay/OverlayProxy;

.field public mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

.field private mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

.field public mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

.field public mServiceState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    iget p2, p3, Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;->mData:I

    iput p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getInstance(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p2, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mClient:Ljava/lang/ref/WeakReference;

    iget-object p2, p2, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.coloros.assistantscreen"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6f

    invoke-virtual {p2, v1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_6f
    const-string p3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    sget p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    if-gtz p2, :cond_92

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->loadApiVersion(Landroid/content/Context;)V

    :cond_92
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    const-string p2, "LauncherClient"

    if-eqz p1, :cond_cd

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p1

    if-eqz p1, :cond_cd

    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    if-nez p1, :cond_cd

    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    if-eqz p1, :cond_cd

    const-string p1, "LauncherClient reset mIsLandscape false, current isLandscape but now isFoldScreenFolded and isNotMultiWindowMode!"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    :cond_cd
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "disable_assistant_screen"

    invoke-static {p1, p3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_dd

    const/4 p1, 0x1

    goto :goto_de

    :cond_dd
    move p1, v0

    :goto_de
    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSettingsOn:Z

    :try_start_e0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {p1, p3}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isOplusLauncher()Z

    move-result p3

    if-eqz p3, :cond_115

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragInterfaceManager:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->setupLauncher(Lcom/android/launcher/Launcher;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_10e} :catch_10f

    goto :goto_115

    :catch_10f
    move-exception p1

    const-string p3, "init exception, message:"

    invoke-static {p3, p1, p2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_115
    :goto_115
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_13c

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_13c

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_13c

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    :cond_13c
    return-void
.end method

.method public static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->lambda$onStart$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnectBySelf(Z)V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->loadApiVersion(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->notifyWindowChange()V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->lambda$reconnectIfNecessary$2()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->lambda$connectIfNecessary$1()V

    return-void
.end method

.method private disconnectBySelf(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    if-eqz v0, :cond_19

    const-string v0, "disconnect"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->setIgnoreReconnect(Z)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->setOverlay(Lcom/android/overlay/OverlayProxy;)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->disconnect()V

    :cond_19
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 1

    invoke-static {p0}, Lcom/android/overlay/OverlayProxy;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private isAssistScreenSwtichEnabled(Landroid/content/Context;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSettingsOn:Z

    return p0
.end method

.method private synthetic lambda$connectIfNecessary$1()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnectBySelf(Z)V

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .registers 2

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$reconnectIfNecessary$2()V
    .registers 2

    const-string v0, "reconnect"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method private static loadApiVersion(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_6

    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1d

    goto :goto_26

    :cond_1d
    const-string v1, "service.api.version"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    goto :goto_28

    :cond_26
    :goto_26
    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    :goto_28
    return-void
.end method

.method private logLifecycle(Ljava/lang/String;)V
    .registers 4

    const-string v0, "LauncherClient."

    const-string v1, ", mDestroyed:"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAssistScreenShowing:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", overlay connected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", layoutParams:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherClient"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyWindowChange()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/overlay/OverlayProxy;->onProfileChanged(ZZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string v0, "notifyWindowChange exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public checkoutAssistantAllowDrag(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    const-string p1, "checkoutAssistantAllowDrag exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public connectIfNecessary(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const-string v1, "LauncherClient"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    const-string v0, "google api version is too low, try get again"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->loadApiVersion(Landroid/content/Context;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenSwtichEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v3

    const-string v4, "connectIfNecessary, isAssisScreenEnable:"

    const-string v5, ", isNotInChildMode:"

    const-string v6, ", isConnected:"

    invoke-static {v4, v0, v5, v2, v6}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mDestroyed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v1, :cond_61

    if-eqz v0, :cond_61

    if-eqz v2, :cond_61

    if-nez v3, :cond_61

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->connect(Ljava/lang/String;)V

    goto :goto_7d

    :cond_61
    const-string/jumbo v0, "switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "childrenMode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    :cond_72
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/gsa/launcherclient/a;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7d
    :goto_7d
    if-eqz v2, :cond_8c

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-eqz p1, :cond_8c

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->bindDragSever()V

    :cond_8c
    if-eqz v2, :cond_97

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_97

    sget-object p1, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    invoke-virtual {p1, p0}, Lcom/android/overlay/ShelfService;->bindShelfService(Landroid/content/Context;)V

    :cond_97
    return-void
.end method

.method public final endScroll()V
    .registers 3

    const-string v0, "LauncherClient"

    const-string v1, "endScroll"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    :try_start_16
    iput-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->endScroll()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p0

    const-string v1, "endScroll exception, message:"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final exchangeConfig()V
    .registers 5

    const-string v0, "exchangeConfig apiVersion "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9f

    :try_start_1c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/overlay/OverlayCallbackProxy;

    invoke-direct {v0}, Lcom/android/overlay/OverlayCallbackProxy;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    :cond_27
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/overlay/OverlayCallbackProxy;->setup(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/view/WindowManager;Landroid/view/Window;)V

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_49

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    iget v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/overlay/OverlayProxy;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/android/overlay/OverlayCallbackProxy;I)V

    goto :goto_72

    :cond_49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    invoke-virtual {v1, v0, v2}, Lcom/android/overlay/OverlayProxy;->windowAttached2(Landroid/os/Bundle;Lcom/android/overlay/OverlayCallbackProxy;)V

    :goto_72
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_9f

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_85

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {v0, p0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V

    goto :goto_9f

    :cond_85
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_91

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onResume()V

    goto :goto_9f

    :cond_91
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onPause()V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_96} :catch_97

    goto :goto_9f

    :catch_97
    move-exception p0

    const-string v0, "setLayoutParams exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public getIsScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    return p0
.end method

.method public final hideOverlay(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    if-eqz v0, :cond_1d

    :try_start_a
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->closeOverlay(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    const-string p1, "hideOverlay exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public hideOverlayWhenScrolling(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_24

    :try_start_6
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/overlay/OverlayProxy;->onScroll(F)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v0}, Lcom/android/overlay/OverlayProxy;->endScroll()V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->closeOverlay(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    const-string p1, "hideOverlay exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public isAssistScreenEnable(Landroid/content/Context;)Z
    .registers 6

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_9

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    invoke-static {v1, v0}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "LauncherClient"

    if-nez v1, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAssistScreenEnable, not installed! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_34

    const-string p0, "isAssistScreenEnable, not connected!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_34
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string p0, "isAssistScreenEnable, child mode!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_46
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_60

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string p0, "isAssistScreenEnable, split"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_60
    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenSwtichEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_6c

    const-string p0, "isAssistScreenEnable, switch off!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6c
    const/4 p0, 0x1

    return p0
.end method

.method public isConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mClient:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mClient:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    :cond_13
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public isOverviewState()Z
    .registers 2

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method

.method public needDelayReconnect()Z
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOplusAssistantKeepAlive()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1b

    return v1

    :cond_1b
    sget-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->dragServerBinderAlive()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-nez p0, :cond_2e

    move v1, v2

    :cond_2e
    return v1
.end method

.method public final onAttachedToWindow()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1b
    return-void
.end method

.method public final onDestroyed()V
    .registers 4

    const-string v0, "LauncherClient"

    const-string v1, "onDestroyed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v1}, Lcom/android/overlay/OverlayProxy;->onDestory()V

    :cond_12
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/overlay/OverlayKeepAliveService;->stopKeepAliveImmediately(Landroid/app/Activity;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v1

    const-string v2, "onDestory exception, message:"

    invoke-static {v2, v1, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnectBySelf(Z)V

    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    sput-object v1, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    :cond_2c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragInterfaceManager:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->unBindDragSever()V

    :cond_33
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3c

    sget-object v2, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    invoke-virtual {v2, v0}, Lcom/android/overlay/ShelfService;->unBindShelfServices(Landroid/content/Context;)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_70

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v0, v2}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    :cond_70
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/android/overlay/OverlayCallbackProxy;->destory()V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    :cond_79
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz v0, :cond_7f

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    :cond_7f
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz v0, :cond_85

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

    :cond_85
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_8
    return-void
.end method

.method public final onPause()V
    .registers 3

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_34

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_34

    :try_start_19
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_24

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onPause()V

    goto :goto_34

    :cond_24
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {v0, p0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    const-string v0, "onPause exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public onRecentsAnimationFinished(Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    return p0

    :cond_e
    return v0

    :catch_f
    move-exception p0

    const-string p1, "onRecentsAnimationFinished exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return v0
.end method

.method public onRecentsAnimationStart()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onRecentsAnimationStart()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string v0, "onRecentsAnimationStart exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string p1, "onRecentsAnimationSurfaceSave exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public final onResume()V
    .registers 6

    const-string v0, "onResume exception, message:"

    const-string v1, "LauncherClient"

    const-string v2, "onResume"

    invoke-direct {p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v2, :cond_6c

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_6c

    :try_start_1d
    sget v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_28

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v2}, Lcom/android/overlay/OverlayProxy;->onResume()V

    goto :goto_2f

    :cond_28
    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {v2, v3}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V

    :goto_2f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThreadPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xa

    if-le v2, v3, :cond_50

    return-void

    :cond_50
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startKeepAlive()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_53} :catch_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_53} :catch_54

    goto :goto_6c

    :catch_54
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :catch_68
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public final onStart()V
    .registers 5

    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v1, :cond_58

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v1

    const-string v2, "LauncherClient"

    if-eqz v1, :cond_2a

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz v1, :cond_58

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_58

    :try_start_1f
    invoke-virtual {v1, v0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_58

    :catch_23
    move-exception p0

    const-string v0, "onStart exception, message: "

    invoke-static {v0, p0, v2}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_58

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_30
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onStart()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_58

    :catch_36
    move-exception p0

    const-string v0, "onStart exception, message:"

    invoke-static {v0, p0, v2}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_58

    :cond_3d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDomesticLightOS()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/a;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_58

    :cond_55
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public final onStop()V
    .registers 4

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    const-string v1, "LauncherClient"

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz v2, :cond_4e

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_4e

    :try_start_1f
    invoke-virtual {v2, v0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_4e

    :catch_23
    move-exception p0

    const-string v0, "onStop exception, message: "

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_4e

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4e

    :try_start_30
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/overlay/OverlayProxy;->onScroll(F)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v0}, Lcom/android/overlay/OverlayProxy;->endScroll()V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v0}, Lcom/android/overlay/OverlayProxy;->onStop()V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->stopKeepAlive()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception p0

    const-string v0, "onStop exception, message:"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onViewAlphaChanged(F)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onViewAlphaChanged(F)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string p1, "onViewAlphaChanged exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public reconnectIfNecessary()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    const-string v1, "LauncherClient"

    if-nez v0, :cond_c

    const-string p0, "reconnectIfNecessary() mActivity is null !"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isOverviewState()Z

    move-result v0

    const-wide/16 v2, 0x1f4

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->needDelayReconnect()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2b

    :cond_1b
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lcom/google/android/libraries/gsa/launcherclient/a;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2b
    :goto_2b
    const-string v0, "handleMessage: isOverviewState  or assistant stopped, delayed."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Lcom/google/android/libraries/gsa/launcherclient/a;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAssistScreenShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    return-void
.end method

.method public setDragCallback(Lcom/android/launcher3/dragndrop/IDragCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-void
.end method

.method public setFlags(Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;)V
    .registers 2

    iget p1, p1, Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;->mData:I

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->exchangeConfig()V

    return-void
.end method

.method public final setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eq v0, p1, :cond_2b

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->exchangeConfig()V

    goto :goto_2b

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2b

    :try_start_12
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/overlay/OverlayProxy;->windowDetached(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p1

    const-string v0, "setLayoutParams exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_28
    :goto_28
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final setOverlay(Lcom/android/overlay/OverlayProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setServiceState(I)V

    goto :goto_10

    :cond_9
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->exchangeConfig()V

    :cond_10
    :goto_10
    return-void
.end method

.method public setPreloaded(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    if-eq v0, p1, :cond_15

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz v0, :cond_15

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onServiceStateChanged(Z)V

    :cond_15
    return-void
.end method

.method public final setScroll(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :try_start_e
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onScroll(F)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string p1, "setScroll exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setServiceState(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceState, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    if-eq v0, p1, :cond_2b

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-interface {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onServiceStateChanged(Z)V

    :cond_2b
    return-void
.end method

.method public startKeepAlive()V
    .registers 1

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/overlay/OverlayKeepAliveService;->startKeepAlive(Landroid/app/Activity;)V

    return-void
.end method

.method public final startScroll()V
    .registers 4

    const-string v0, "LauncherClient"

    const-string/jumbo v1, "startScroll"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    if-nez v1, :cond_3b

    :try_start_1a
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startKeepAlive()V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v1}, Lcom/android/overlay/OverlayProxy;->startScroll()V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->runDeferredCallback(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    move-exception p0

    const-string/jumbo v1, "startScroll exception, message:"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public stopKeepAlive()V
    .registers 1

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/overlay/OverlayKeepAliveService;->stopKeepAlive(Landroid/app/Activity;)V

    return-void
.end method
