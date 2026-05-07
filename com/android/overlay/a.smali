.class public final synthetic Lcom/android/overlay/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/overlay/ShelfService;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/overlay/ShelfService;I)V
    .registers 4

    iput p3, p0, Lcom/android/overlay/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/overlay/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/overlay/a;->c:Lcom/android/overlay/ShelfService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/overlay/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/overlay/a;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/overlay/a;->c:Lcom/android/overlay/ShelfService;

    invoke-static {v0, p0}, Lcom/android/overlay/ShelfService;->a(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/overlay/a;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/overlay/a;->c:Lcom/android/overlay/ShelfService;

    invoke-static {v0, p0}, Lcom/android/overlay/ShelfService;->b(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
