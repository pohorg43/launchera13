.class public Lcom/coui/appcompat/poplist/COUIClickSelectMenu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field public b:Lcom/coui/appcompat/poplist/PreciseClickHelper;

.field public c:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field public d:Z

.field public e:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->d:Z

    new-instance v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p2, :cond_11

    iput-object p2, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    :cond_11
    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->e:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c(Ljava/util/List;)V

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->a(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    new-instance p2, Lcom/coui/appcompat/poplist/PreciseClickHelper;

    new-instance v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;-><init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)V

    invoke-direct {p2, p1, v0}, Lcom/coui/appcompat/poplist/PreciseClickHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->b:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->b:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    if-eqz v0, :cond_22

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->d:Z

    if-eqz p1, :cond_17

    iget-object p0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    iget-object p1, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->d:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    iget-object p1, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_22

    :cond_17
    iget-object p0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_22
    :goto_22
    return-void
.end method
