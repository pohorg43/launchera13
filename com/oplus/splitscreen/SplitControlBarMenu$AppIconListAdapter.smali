.class Lcom/oplus/splitscreen/SplitControlBarMenu$AppIconListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitControlBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppIconListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;


# direct methods
.method private constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$AppIconListAdapter;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu;Lcom/oplus/splitscreen/SplitControlBarMenu$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppIconListAdapter;-><init>(Lcom/oplus/splitscreen/SplitControlBarMenu;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$AppIconListAdapter;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$600(Lcom/oplus/splitscreen/SplitControlBarMenu;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$AppIconListAdapter;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$600(Lcom/oplus/splitscreen/SplitControlBarMenu;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->bind(Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$AppIconListAdapter;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p2}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/wm/shell/R$layout;->split_screen_control_bar_menu_icon_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$AppIconListAdapter;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-direct {p2, p0, p1}, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;-><init>(Lcom/oplus/splitscreen/SplitControlBarMenu;Landroid/view/View;)V

    return-object p2
.end method
