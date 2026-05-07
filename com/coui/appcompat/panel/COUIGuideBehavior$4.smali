.class Lcom/coui/appcompat/panel/COUIGuideBehavior$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIGuideBehavior;->addAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIGuideBehavior;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIGuideBehavior;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$4;->b:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$4;->b:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIGuideBehavior$4;->a:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    const/4 p0, 0x1

    return p0
.end method
