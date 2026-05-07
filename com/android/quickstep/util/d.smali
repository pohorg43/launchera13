.class public final synthetic Lcom/android/quickstep/util/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:[Landroid/content/Intent;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;I)V
    .registers 5

    iput p4, p0, Lcom/android/quickstep/util/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/d;->c:[Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/quickstep/util/d;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/util/d;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/util/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/d;->c:[Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/quickstep/util/d;->d:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/ImageActionUtils;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/quickstep/util/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/d;->c:[Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/quickstep/util/d;->d:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/ImageActionUtils;->b(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
