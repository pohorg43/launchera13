.class public final Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;

.field private static final SCALE_ALPHA_TARGET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimaProgress:F

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mFromAlpha:F

.field private mFromScale:F

.field private mToAlpha:F

.field private mToScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;

    new-instance v0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion$SCALE_ALPHA_TARGET$1;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion$SCALE_ALPHA_TARGET$1;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->SCALE_ALPHA_TARGET:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(FFFFLcom/android/launcher/Launcher;)V
    .registers 7

    const-string v0, "launcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mFromScale:F

    iput p2, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mToScale:F

    iput p3, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mFromAlpha:F

    iput p4, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mToAlpha:F

    invoke-virtual {p5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const-string p2, "launcher.dragLayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-void
.end method

.method public static final synthetic access$getSCALE_ALPHA_TARGET$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->SCALE_ALPHA_TARGET:Landroid/util/FloatProperty;

    return-object v0
.end method


# virtual methods
.method public final get()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mAnimaProgress:F

    return p0
.end method

.method public final set(F)V
    .registers 4

    iput p1, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mAnimaProgress:F

    iget v0, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mFromAlpha:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mToAlpha:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget v0, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mFromScale:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mToScale:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method
