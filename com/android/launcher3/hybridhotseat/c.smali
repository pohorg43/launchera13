.class public final synthetic Lcom/android/launcher3/hybridhotseat/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/hybridhotseat/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/c;->b:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/hybridhotseat/c;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/c;->b:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    invoke-static {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->b(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/c;->b:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    invoke-static {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->a(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
