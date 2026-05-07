.class public final Lcom/android/common/util/LauncherBooster;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/LauncherBooster$CpuBoost;,
        Lcom/android/common/util/LauncherBooster$GpuBoost;,
        Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;
    }
.end annotation


# static fields
.field private static final ANIMATION_END:Ljava/lang/String; = "0"

.field private static final EXIT_ANIMATION_START:Ljava/lang/String; = "2"

.field public static final GPU_OSENSE_TIME_OUT_CLEAN_TASK:I = 0x1388

.field public static final GPU_OSENSE_TIME_OUT_TIME:I = 0x190

.field public static final GPU_TYPE_CLEAN_RECENT:Ljava/lang/String; = "OSENSE_ACTION_CLEAN_RECENT"

.field public static final GPU_TYPE_CLOSE_APP:Ljava/lang/String; = "OSENSE_ACTION_LAUNCHER_CLOSE_APP_ANIMATION"

.field public static final GPU_TYPE_GESTURE:Ljava/lang/String; = "OSENSE_ACTION_GESTURE_ANIMATION"

.field public static final GPU_TYPE_OPEN_APP:Ljava/lang/String; = "OSENSE_ACTION_LAUNCHER_OPEN_APP_ANIMATION"

.field private static final IM_FLAG_LAUNCHER:I = 0x8

.field public static final INSTANCE:Lcom/android/common/util/LauncherBooster;

.field public static final INVALID_VALUE:J = -0x1L

.field public static final JANK_ENTER_RECENTS_FROM_APP:I = 0x4

.field public static final JANK_ENTER_RECENTS_FROM_WORKSPACE:I = 0x3

.field public static final JANK_EXIT_RECENTS:I = 0x5

.field public static final JANK_GO_HOME:I = 0x2

.field public static final JANK_LAUNCH_APP:I = 0x1

.field public static final JANK_LAUNCH_APP_FROM_RECENTS:I = 0x6

.field private static final LAUNCHER_SCENE_SI:I = 0x4

.field private static final LAUNCHER_SI_START:Ljava/lang/String; = "4"

.field private static final NOTIFY_ANIMATING:I = 0x521c

.field private static final OPEN_ANIMATION_START:Ljava/lang/String; = "1"

.field private static final SET_UX_SCENE:I = 0x6

.field private static final SF_LONG_DURATION:I = 0x5dc

.field public static final SF_SHORT_DURATION:I = 0x1f4

.field private static final START_EXIT_SCENE_SI:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LauncherBooster"

.field private static final UIFIRST_OPT_SET:I = 0x80

.field private static final UIFIRST_SCENE_LAUNCH:I = 0x1

.field private static final UIFIRST_TYPE_ANIMATOR_TASK:I = 0x4

.field private static final cpu$delegate:Ly2/e;

.field private static final gpu$delegate:Ly2/e;

.field private static final sf$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/LauncherBooster;

    invoke-direct {v0}, Lcom/android/common/util/LauncherBooster;-><init>()V

    sput-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    sget-object v0, Lcom/android/common/util/LauncherBooster$cpu$2;->INSTANCE:Lcom/android/common/util/LauncherBooster$cpu$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster;->cpu$delegate:Ly2/e;

    sget-object v0, Lcom/android/common/util/LauncherBooster$gpu$2;->INSTANCE:Lcom/android/common/util/LauncherBooster$gpu$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster;->gpu$delegate:Ly2/e;

    sget-object v0, Lcom/android/common/util/LauncherBooster$sf$2;->INSTANCE:Lcom/android/common/util/LauncherBooster$sf$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster;->sf$delegate:Ly2/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->cpu$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherBooster$CpuBoost;

    return-object p0
.end method

.method public final getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->gpu$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherBooster$GpuBoost;

    return-object p0
.end method

.method public final getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->sf$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    return-object p0
.end method
