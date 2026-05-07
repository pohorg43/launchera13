.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;)V
    .registers 3

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->a:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->a:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->a:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result v1

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->a:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1$1;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    return-void
.end method
