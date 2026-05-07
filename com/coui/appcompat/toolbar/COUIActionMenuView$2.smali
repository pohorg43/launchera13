.class Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/toolbar/COUIActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-nez v0, :cond_62

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/support/appcompat/R$style;->Theme_COUI_Main:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    new-instance v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->r:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->a(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->w:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    :cond_62
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_11a

    const/4 p1, 0x0

    :goto_70
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_106

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    new-instance v9, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b3

    :cond_b1
    const-string v0, ""

    :goto_b3
    move-object v4, v0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v6

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f2

    :cond_f1
    const/4 v0, -0x1

    :goto_f2
    move v7, v0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_70

    :cond_106
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c(Ljava/util/List;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2$1;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;)V

    iput-object v0, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->m:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_11a
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;->a:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d(Landroid/view/View;)V

    return-void
.end method
