.class public final Lcom/android/launcher/widget/OplusWidgetsHzViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# instance fields
.field private final widgetCell:Lcom/android/launcher3/widget/WidgetCell;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a05d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.widget_cell_id)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/widget/WidgetCell;

    iput-object p1, p0, Lcom/android/launcher/widget/OplusWidgetsHzViewHolder;->widgetCell:Lcom/android/launcher3/widget/WidgetCell;

    return-void
.end method


# virtual methods
.method public final getWidgetCell()Lcom/android/launcher3/widget/WidgetCell;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/OplusWidgetsHzViewHolder;->widgetCell:Lcom/android/launcher3/widget/WidgetCell;

    return-object p0
.end method
