.class Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$2;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;)Ljava/lang/Float;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->access$000(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$2;->get(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;Ljava/lang/Float;)V
    .registers 5

    iget-object p0, p1, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1f

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->access$002(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;F)F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1f
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$2;->set(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;Ljava/lang/Float;)V

    return-void
.end method
