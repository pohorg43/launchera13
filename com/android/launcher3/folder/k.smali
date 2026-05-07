.class public final synthetic Lcom/android/launcher3/folder/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/folder/OplusFolder;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;Ljava/util/ArrayList;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/folder/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/k;->b:Lcom/android/launcher3/folder/OplusFolder;

    iput-object p2, p0, Lcom/android/launcher3/folder/k;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/folder/k;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/folder/k;->b:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/k;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/OplusFolder;->l(Lcom/android/launcher3/folder/OplusFolder;Ljava/util/ArrayList;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/folder/k;->b:Lcom/android/launcher3/folder/OplusFolder;

    iget-object p0, p0, Lcom/android/launcher3/folder/k;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/OplusFolder;->o(Lcom/android/launcher3/folder/OplusFolder;Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
