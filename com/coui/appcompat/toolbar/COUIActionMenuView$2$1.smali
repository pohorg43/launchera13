.class Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    return-void
.end method
