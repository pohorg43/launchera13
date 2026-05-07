.class public final Lcom/oplus/quickstep/utils/GestureBooster;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

.field private static final SF_GESTURE_LITTLE_TIME:I = 0x64

.field public static final SF_GESTURE_SHORT_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "GestureBooster"

.field private static final TIME_OFFSET:J = 0xaL

.field private static final extendSFAnimatingTime:Ljava/lang/Runnable;

.field private static final mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/GestureBooster;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/common/util/d0;->h:Lcom/android/common/util/d0;

    sput-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->extendSFAnimatingTime:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/utils/GestureBooster;->extendSFAnimatingTime$lambda-0()V

    return-void
.end method

.method private static final extendSFAnimatingTime$lambda-0()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/quickstep/utils/GestureBooster;->openSfLittleTime$default(Lcom/oplus/quickstep/utils/GestureBooster;IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const/16 p1, 0x258

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    const/4 p3, 0x1

    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf(IZZ)V

    return-void
.end method

.method private final openSfLittleTime(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf(IZZ)V

    return-void
.end method

.method public static synthetic openSfLittleTime$default(Lcom/oplus/quickstep/utils/GestureBooster;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x64

    :cond_6
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/GestureBooster;->openSfLittleTime(I)V

    return-void
.end method


# virtual methods
.method public final openSf(IZZ)V
    .registers 8

    int-to-long v0, p1

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    if-nez p2, :cond_1c

    sget-object p0, Lcom/oplus/quickstep/utils/GestureBooster;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/oplus/quickstep/utils/GestureBooster;->extendSFAnimatingTime:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    if-eqz p2, :cond_25

    sget-object p0, Lcom/oplus/quickstep/utils/GestureBooster;->mainHandler:Landroid/os/Handler;

    sget-object p2, Lcom/oplus/quickstep/utils/GestureBooster;->extendSFAnimatingTime:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_25
    if-nez p3, :cond_28

    return-void

    :cond_28
    const-string p0, "openSf: notify sf animating and the duration is "

    const-string p2, ", caller = "

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xf

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "GestureBooster"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeExtendTimeCallbacks()V
    .registers 6

    sget-object p0, Lcom/oplus/quickstep/utils/GestureBooster;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->extendSFAnimatingTime:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    const-string v2, "removeExtendTimeCallbacks: hasCallbacks = "

    const-string v3, "QuickStep"

    const-string v4, "GestureBooster"

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method
