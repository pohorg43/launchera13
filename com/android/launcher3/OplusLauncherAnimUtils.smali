.class public final Lcom/android/launcher3/OplusLauncherAnimUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final ICON_FALLEN_TRANSITION_MS:I = 0x0

.field public static final INSTANCE:Lcom/android/launcher3/OplusLauncherAnimUtils;

.field public static final LAUNCHER_RESUME_ANIM_DAMPING_RATIO:F = 0.92f

.field public static final LAUNCHER_RESUME_ANIM_START_SCALE:F = 0.7f

.field public static final LAUNCHER_RESUME_ANIM_START_SCALE_ALL_APPS:F = 0.9f

.field public static final LAUNCHER_RESUME_ANIM_STIFFNESS:F = 300.0f

.field public static final PAGE_PREVIEW_TRANSITION_MS:I = 0xfa

.field public static final SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final TOGGLE_BAR_TRANSITION_MS:I = 0x140

.field public static final TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final VIEW_ALPHA_1:F = 1.0f


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/OplusLauncherAnimUtils;

    invoke-direct {v0}, Lcom/android/launcher3/OplusLauncherAnimUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAnimUtils;->INSTANCE:Lcom/android/launcher3/OplusLauncherAnimUtils;

    new-instance v0, Lcom/android/launcher3/OplusLauncherAnimUtils$SCALE$1;

    invoke-direct {v0}, Lcom/android/launcher3/OplusLauncherAnimUtils$SCALE$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAnimUtils;->SCALE:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/OplusLauncherAnimUtils$ALPHA$1;

    invoke-direct {v0}, Lcom/android/launcher3/OplusLauncherAnimUtils$ALPHA$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAnimUtils;->ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/OplusLauncherAnimUtils$TRANSLATION_X$1;

    invoke-direct {v0}, Lcom/android/launcher3/OplusLauncherAnimUtils$TRANSLATION_X$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAnimUtils;->TRANSLATION_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/OplusLauncherAnimUtils$TRANSLATION_Y$1;

    invoke-direct {v0}, Lcom/android/launcher3/OplusLauncherAnimUtils$TRANSLATION_Y$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAnimUtils;->TRANSLATION_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
