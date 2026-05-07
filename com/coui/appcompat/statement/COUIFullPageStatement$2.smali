.class Lcom/coui/appcompat/statement/COUIFullPageStatement$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIFullPageStatement;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$2;->a:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$2;->a:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->f:Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;->a()V

    :cond_9
    return-void
.end method
