.class public Lcom/android/systemui/animation/LaunchAnimator$State;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/LaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private bottom:I

.field private bottomCornerRadius:F

.field private left:I

.field private right:I

.field private final startTop:I

.field private top:I

.field private topCornerRadius:F

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIFF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    iput p2, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    iput p3, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    iput p4, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    iput p5, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    iput p6, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->startTop:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_10

    move p3, v0

    :cond_10
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_15

    move p4, v0

    :cond_15
    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_1b

    move p5, v0

    :cond_1b
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_20

    move p6, v0

    :cond_20
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFF)V

    return-void
.end method


# virtual methods
.method public final getBottom()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    return p0
.end method

.method public final getBottomCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    return p0
.end method

.method public final getCenterX()F
    .registers 3

    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method public final getCenterY()F
    .registers 3

    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method public final getHeight()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getLeft()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    return p0
.end method

.method public final getRight()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    return p0
.end method

.method public final getTop()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    return p0
.end method

.method public getTopChange()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->startTop:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getTopCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    return p0
.end method

.method public final getVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    return p0
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    iget p0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final setBottom(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    return-void
.end method

.method public final setBottomCornerRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    return-void
.end method

.method public final setLeft(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    return-void
.end method

.method public final setRight(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    return-void
.end method

.method public final setTop(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    return-void
.end method

.method public final setTopCornerRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    return-void
.end method

.method public final setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    return-void
.end method
