.class public final synthetic Lcom/android/wm/shell/compatui/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/compatui/CompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/compatui/e;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/e;->b:Lcom/android/wm/shell/compatui/CompatUILayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/compatui/e;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_14

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/e;->b:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->c(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_d  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/e;->b:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->a(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_14
    iget-object p0, p0, Lcom/android/wm/shell/compatui/e;->b:Lcom/android/wm/shell/compatui/CompatUILayout;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->h(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
