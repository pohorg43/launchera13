.class public Lcom/oplus/splitscreen/observer/SplitScreenObserver;
.super Landroid/database/ContentObserver;
.source ""


# static fields
.field private static final KEY_SPLIT_SCREEN:Ljava/lang/String; = "allow_resizeable_screen"

.field public static final SPLIT_SCREEN_DISABLE:I = 0x0

.field public static final SPLIT_SCREEN_ENABLE:I = 0x1

.field public static final SPLIT_SCREEN_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SplitScreenObserver"

.field private static final sInstance:Lcom/oplus/splitscreen/observer/SplitScreenObserver;


# instance fields
.field private mIsSplitScreenEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/splitscreen/observer/SplitScreenObserver;

    invoke-direct {v0}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->sInstance:Lcom/oplus/splitscreen/observer/SplitScreenObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private checkValidity(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "allow_resizeable_screen"

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p0, "SplitScreenObserver"

    const-string p1, "split screen observer checkValidity"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/observer/SplitScreenObserver;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->sInstance:Lcom/oplus/splitscreen/observer/SplitScreenObserver;

    return-object v0
.end method

.method private registerObserver(Landroid/content/Context;)V
    .registers 5

    const-string v0, "allow_resizeable_screen"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "SplitScreenObserver"

    const-string p1, "split screen observer registered"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSplitScreenValue()V
    .registers 5

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allow_resizeable_screen"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p0, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->mIsSplitScreenEnabled:Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->checkValidity(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->registerObserver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->updateSplitScreenValue()V

    return-void
.end method

.method public isSplitScreenEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->mIsSplitScreenEnabled:Z

    return p0
.end method

.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->updateSplitScreenValue()V

    const-string p1, "split screen observer changed, value = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->mIsSplitScreenEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitScreenObserver"

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->mIsSplitScreenEnabled:Z

    if-nez p0, :cond_27

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenMode(I)V

    :cond_27
    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->checkValidity(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->updateSplitScreenValue()V

    return-void
.end method
