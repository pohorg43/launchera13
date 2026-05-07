.class public final synthetic Lcom/android/launcher/pagepreview/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pagepreview/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/pagepreview/a;->c:I

    iput-object p3, p0, Lcom/android/launcher/pagepreview/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/pagepreview/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;ILcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/pagepreview/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/pagepreview/a;->c:I

    iput-object p3, p0, Lcom/android/launcher/pagepreview/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/pagepreview/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher/pagepreview/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/pagepreview/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    iget v1, p0, Lcom/android/launcher/pagepreview/a;->c:I

    iget-object v2, p0, Lcom/android/launcher/pagepreview/a;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->b(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/android/launcher/pagepreview/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

    iget v1, p0, Lcom/android/launcher/pagepreview/a;->c:I

    iget-object v2, p0, Lcom/android/launcher/pagepreview/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->a(Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;ILcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$LayoutVH;Landroid/view/View;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
