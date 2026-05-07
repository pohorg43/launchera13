.class public Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;
.super Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
.source ""


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final title:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a05e8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0467

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/OplusWidgetsRowViewHolder;->title:Lcom/android/launcher3/BubbleTextView;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
