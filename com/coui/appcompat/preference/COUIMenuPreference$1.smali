.class Lcom/coui/appcompat/preference/COUIMenuPreference$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIMenuPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/preference/COUIMenuPreference;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIMenuPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->a:Lcom/coui/appcompat/preference/COUIMenuPreference;

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

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->a:Lcom/coui/appcompat/preference/COUIMenuPreference;

    iget-object p2, p1, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    aget-object p2, p2, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->a:Lcom/coui/appcompat/preference/COUIMenuPreference;

    iget-object p2, p1, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    aget-object p2, p2, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_1d
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference$1;->a:Lcom/coui/appcompat/preference/COUIMenuPreference;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    goto :goto_38

    :cond_2f
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e()V

    :cond_38
    :goto_38
    return-void
.end method
