.class Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a(Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->c:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2, p3}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->a(Landroid/view/View;II)V

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    neg-int v1, p2

    neg-int v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr p3, v3

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:[I

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 p2, 0x3

    aput p3, v0, p2

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object p2, p2, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->e:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_4f

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$integer;->support_menu_click_select_time:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    new-instance p3, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1$1;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1$1;-><init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;Landroid/view/View;)V

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    :cond_4f
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->d:Z

    if-eqz p2, :cond_5a

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d(Landroid/view/View;)V

    :cond_5a
    :goto_5a
    return-void
.end method
