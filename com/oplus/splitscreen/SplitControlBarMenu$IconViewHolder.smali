.class Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitControlBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconViewHolder"
.end annotation


# instance fields
.field public mIconImg:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->mIconImg:Landroid/widget/ImageView;

    new-instance p1, Lcom/oplus/splitscreen/d;

    invoke-direct {p1, p0}, Lcom/oplus/splitscreen/d;-><init>(Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$400(Lcom/oplus/splitscreen/SplitControlBarMenu;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$500(Lcom/oplus/splitscreen/SplitControlBarMenu;)Lcom/oplus/splitscreen/SplitControlBarMenu$SplitControlBarMenuHandler;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$500(Lcom/oplus/splitscreen/SplitControlBarMenu;)Lcom/oplus/splitscreen/SplitControlBarMenu$SplitControlBarMenuHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$600(Lcom/oplus/splitscreen/SplitControlBarMenu;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;->access$100(Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$700(Lcom/oplus/splitscreen/SplitControlBarMenu;)Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/oplus/splitscreen/SplitControlBarMenu$SplitControlBarMenuHandler;->onAppIconClick(Ljava/lang/String;Z)V

    :cond_30
    return-void
.end method


# virtual methods
.method public bind(Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;)V
    .registers 7

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;->access$100(Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "allApps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->mIconImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$200(Lcom/oplus/splitscreen/SplitControlBarMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$200(Lcom/oplus/splitscreen/SplitControlBarMenu;)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$200(Lcom/oplus/splitscreen/SplitControlBarMenu;)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v4}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$200(Lcom/oplus/splitscreen/SplitControlBarMenu;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_29
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$IconViewHolder;->mIconImg:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;->access$300(Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
