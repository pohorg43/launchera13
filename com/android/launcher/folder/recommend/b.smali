.class public final synthetic Lcom/android/launcher/folder/recommend/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/DestroyCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/folder/recommend/FooterController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/FooterController;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/folder/recommend/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/b;->b:Lcom/android/launcher/folder/recommend/FooterController;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/folder/recommend/b;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/b;->b:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FooterController;->onDestroy()V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
