.class public final synthetic Lcom/android/launcher/folder/recommend/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/folder/recommend/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/e;->b:Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/folder/recommend/e;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/e;->b:Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->b(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/e;->b:Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->a(Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
