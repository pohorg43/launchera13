.class Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3$1;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3$1;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;

    iget-object p2, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->a:Landroid/view/Window;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->b:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->c(Landroid/view/Window;Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3$1;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->a:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
