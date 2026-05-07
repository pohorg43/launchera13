.class public final synthetic Lcom/android/launcher3/card/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/card/LauncherCardView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/card/LauncherCardView;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/card/c;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/c;->b:Lcom/android/launcher3/card/LauncherCardView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/card/c;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_22

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher3/card/c;->b:Lcom/android/launcher3/card/LauncherCardView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->g(Lcom/android/launcher3/card/LauncherCardView;I)V

    return-void

    :pswitch_12  #0x1
    iget-object p0, p0, Lcom/android/launcher3/card/c;->b:Lcom/android/launcher3/card/LauncherCardView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->f(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1a  #0x0
    iget-object p0, p0, Lcom/android/launcher3/card/c;->b:Lcom/android/launcher3/card/LauncherCardView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->d(Lcom/android/launcher3/card/LauncherCardView;Landroid/graphics/Bitmap;)V

    return-void

    :goto_22
    iget-object p0, p0, Lcom/android/launcher3/card/c;->b:Lcom/android/launcher3/card/LauncherCardView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->c(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
