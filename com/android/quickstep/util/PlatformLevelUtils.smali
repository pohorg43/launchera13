.class public final Lcom/android/quickstep/util/PlatformLevelUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ANIMATION_LEVEL_A:I = 0x2

.field public static final ANIMATION_LEVEL_A_PLUS:I = 0x1

.field public static final ANIMATION_LEVEL_B:I = 0x4

.field public static final ANIMATION_LEVEL_B_PLUS:I = 0x3

.field public static final ANIMATION_LEVEL_UNDEFINED:I = -0x1

.field public static final INSTANCE:Lcom/android/quickstep/util/PlatformLevelUtils;

.field private static final TAG:Ljava/lang/String; = "PlatformLevelUtils"

.field private static final animationLevelOS14$delegate:Ly2/e;

.field private static final validAnimLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/quickstep/util/PlatformLevelUtils;

    invoke-direct {v0}, Lcom/android/quickstep/util/PlatformLevelUtils;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/PlatformLevelUtils;->INSTANCE:Lcom/android/quickstep/util/PlatformLevelUtils;

    sget-object v0, Lcom/android/quickstep/util/PlatformLevelUtils$animationLevelOS14$2;->INSTANCE:Lcom/android/quickstep/util/PlatformLevelUtils$animationLevelOS14$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/PlatformLevelUtils;->animationLevelOS14$delegate:Ly2/e;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Li1/j;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/PlatformLevelUtils;->validAnimLevel:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAnimationLevelOS14()I
    .registers 1

    sget-object p0, Lcom/android/quickstep/util/PlatformLevelUtils;->animationLevelOS14$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final isAnimationLevel(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static final isAnimationLevelValid()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method
