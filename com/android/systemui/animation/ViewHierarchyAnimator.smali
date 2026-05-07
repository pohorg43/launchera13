.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;,
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;,
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

.field private static final DEFAULT_ADDITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_DURATION:J = 0x1f4L

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_REMOVAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_ADDITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_REMOVAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x4

    new-array v1, v1, [Ly2/i;

    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v3

    new-instance v4, Ly2/i;

    invoke-direct {v4, v2, v3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v4

    new-instance v5, Ly2/i;

    invoke-direct {v5, v3, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v4

    new-instance v5, Ly2/i;

    invoke-direct {v5, v3, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object v0

    new-instance v4, Ly2/i;

    invoke-direct {v4, v3, v0}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    invoke-static {v1}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->PROPERTIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_ADDITION_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_ADDITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_REMOVAL_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_REMOVAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getPROPERTIES$cp()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->PROPERTIES:Ljava/util/Map;

    return-object v0
.end method
