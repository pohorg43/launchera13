.class Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

.field public final synthetic b:I

.field public final synthetic c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->c:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->f:Ljava/util/HashSet;

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->f:Ljava/util/HashSet;

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_2d
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->f:Ljava/util/HashSet;

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v2, v1

    :cond_3e
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->c:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_70

    :cond_46
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    iget v3, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->h:I

    if-ne v1, v3, :cond_52

    iget-object p0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->g:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    invoke-interface {p0, p1, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    return-void

    :cond_52
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->h:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    iput v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->h:I

    :goto_70
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->g:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    invoke-interface {v0, p1, p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    return-void
.end method
