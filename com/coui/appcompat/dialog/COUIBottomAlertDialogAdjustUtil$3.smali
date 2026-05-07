.class final Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/Window;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->a:Landroid/view/Window;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->a:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->a(Landroid/view/Window;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->a:Landroid/view/Window;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->c(Landroid/view/Window;Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;->a:Landroid/view/Window;

    new-instance v1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3$1;-><init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$3;)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->b(Landroid/view/Window;Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;)V

    return-void
.end method
