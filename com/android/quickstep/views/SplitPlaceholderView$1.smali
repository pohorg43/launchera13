.class Lcom/android/quickstep/views/SplitPlaceholderView$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/SplitPlaceholderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/SplitPlaceholderView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/SplitPlaceholderView;)Ljava/lang/Float;
    .registers 2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/SplitPlaceholderView$1;->get(Lcom/android/quickstep/views/SplitPlaceholderView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/quickstep/views/SplitPlaceholderView;F)V
    .registers 3

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto :goto_9

    :cond_7
    const/16 p0, 0x8

    :goto_9
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/SplitPlaceholderView$1;->setValue(Lcom/android/quickstep/views/SplitPlaceholderView;F)V

    return-void
.end method
