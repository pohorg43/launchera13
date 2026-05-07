.class public final synthetic Lcom/android/launcher/guide/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/guide/MultiFingerPageAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/MultiFingerPageAdapter;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/guide/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/i;->b:Lcom/android/launcher/guide/MultiFingerPageAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/guide/i;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/guide/i;->b:Lcom/android/launcher/guide/MultiFingerPageAdapter;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->e(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher/guide/i;->b:Lcom/android/launcher/guide/MultiFingerPageAdapter;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->d(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
