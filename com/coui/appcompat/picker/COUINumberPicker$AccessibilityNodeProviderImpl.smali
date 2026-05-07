.class Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityNodeProviderImpl"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:[I

.field public c:I

.field public final synthetic d:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->a:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->b:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_34
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->b:[I

    iget-object p4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-eq p2, p1, :cond_6a

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6a
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-ne p2, p1, :cond_73

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_73
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_80
    return-object v0
.end method

.method public final b(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_34
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_54

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_54
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-ne v1, v2, :cond_5d

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5d
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6a

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6a
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->b:[I

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget p0, p2, p0

    aget p1, p2, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2c

    const/4 v1, 0x3

    if-eq p2, v1, :cond_7

    return-void

    :cond_7
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p2, p2, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-void

    :cond_2c
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p2, p2, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_75

    const/4 v1, 0x2

    if-eq p1, v1, :cond_46

    const/4 v1, 0x3

    if-eq p1, v1, :cond_11

    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v6, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_46
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v3, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v4, v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v5, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->b(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_75
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v4, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, v0, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_b7
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v4, v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, v0, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->b(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->j(II)I

    move-result p1

    :cond_b
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    if-gt p1, v0, :cond_22

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    if-lt p1, v0, :cond_22

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->p:[Ljava/lang/String;

    if-nez v1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    :cond_1e
    sub-int/2addr p1, v0

    aget-object p0, v1, p1

    :goto_21
    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->e0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_35
    return-void
.end method

.method public f(II)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_70

    const/4 v2, 0x2

    if-eq p1, v2, :cond_32

    const/4 v2, 0x3

    if-eq p1, v2, :cond_c

    goto/16 :goto_95

    :cond_c
    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_23

    :cond_22
    move v0, v1

    :cond_23
    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->e(IILjava/lang/String;)V

    goto :goto_95

    :cond_32
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->e0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2, p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_95

    :cond_70
    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_86

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_87

    :cond_86
    move v0, v1

    :cond_87
    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->e(IILjava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_29

    if-eq p2, v5, :cond_25

    if-eq p2, v4, :cond_25

    if-eq p2, v3, :cond_25

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-virtual {p0, v0, p2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_29
    invoke-virtual {p0, v0, v3, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {p0, v0, v5, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 13

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_109

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_b6

    const/4 v8, 0x2

    if-eq p1, v8, :cond_6a

    const/4 v8, 0x3

    if-eq p1, v8, :cond_1c

    goto/16 :goto_115

    :cond_1c
    if-eq p2, v7, :cond_53

    if-eq p2, v3, :cond_3b

    if-eq p2, v2, :cond_23

    return v5

    :cond_23
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-ne p2, p1, :cond_3a

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_3a
    return v5

    :cond_3b
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-eq p2, p1, :cond_52

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    invoke-virtual {p0, p1, v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_52
    return v5

    :cond_53
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_69

    if-ne p1, v4, :cond_5e

    move v5, v4

    :cond_5e
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget-object p3, Lcom/coui/appcompat/picker/COUINumberPicker;->j1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->a(Z)V

    invoke-virtual {p0, p1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    return v4

    :cond_69
    return v5

    :cond_6a
    if-eq p2, v7, :cond_a7

    const/16 p3, 0x20

    if-eq p2, p3, :cond_98

    if-eq p2, v3, :cond_80

    if-eq p2, v2, :cond_75

    return v5

    :cond_75
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-ne p2, p1, :cond_7f

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    return v4

    :cond_7f
    return v5

    :cond_80
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-eq p2, p1, :cond_97

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    invoke-virtual {p0, p1, v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_97
    return v5

    :cond_98
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a6

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    return v4

    :cond_a6
    return v5

    :cond_a7
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b5

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    return v4

    :cond_b5
    return v5

    :cond_b6
    if-eq p2, v7, :cond_f5

    if-eq p2, v3, :cond_d9

    if-eq p2, v2, :cond_bd

    return v5

    :cond_bd
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-ne p2, p1, :cond_d8

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p2, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_d8
    return v5

    :cond_d9
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-eq p2, p1, :cond_f4

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    invoke-virtual {p0, p1, v6}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p2, p1, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_f4
    return v5

    :cond_f5
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_108

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget-object p3, Lcom/coui/appcompat/picker/COUINumberPicker;->j1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->a(Z)V

    invoke-virtual {p0, p1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    return v4

    :cond_108
    return v5

    :cond_109
    if-eq p2, v3, :cond_144

    if-eq p2, v2, :cond_13c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_12b

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_11a

    :goto_115
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_11a
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12a

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget-object p1, Lcom/coui/appcompat/picker/COUINumberPicker;->j1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->a(Z)V

    return v4

    :cond_12a
    return v5

    :cond_12b
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_13b

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget-object p1, Lcom/coui/appcompat/picker/COUINumberPicker;->j1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->a(Z)V

    return v4

    :cond_13b
    return v5

    :cond_13c
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-ne p2, p1, :cond_143

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    return v4

    :cond_143
    return v5

    :cond_144
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    if-eq p2, p1, :cond_14b

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->c:I

    return v4

    :cond_14b
    return v5
.end method
