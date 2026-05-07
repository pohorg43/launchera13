.class public final Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field private itemText:Landroid/widget/TextView;

.field private mLayout:Landroid/view/View;

.field private radioButton:Landroid/widget/RadioButton;

.field private summaryText:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->this$0:Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a030a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    const v0, 0x7f0a04ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->access$getMIsMultiChoice$p(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_47

    const v0, 0x7f0a0138

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.coui.appcompat.checkbox.COUICheckBox"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    goto :goto_58

    :cond_47
    const v0, 0x7f0a03fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.RadioButton"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    :goto_58
    invoke-static {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->access$getMContext$p(Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0804a8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->mLayout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getCheckBox()Lcom/coui/appcompat/checkbox/COUICheckBox;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-object p0
.end method

.method public final getItemText()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMLayout()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->mLayout:Landroid/view/View;

    return-object p0
.end method

.method public final getRadioButton()Landroid/widget/RadioButton;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public final getSummaryText()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setCheckBox(Lcom/coui/appcompat/checkbox/COUICheckBox;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-void
.end method

.method public final setItemText(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    return-void
.end method

.method public final setMLayout(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->mLayout:Landroid/view/View;

    return-void
.end method

.method public final setRadioButton(Landroid/widget/RadioButton;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    return-void
.end method

.method public final setSummaryText(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    return-void
.end method
