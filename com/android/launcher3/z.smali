.class public final synthetic Lcom/android/launcher3/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/Launcher;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 6

    iput p5, p0, Lcom/android/launcher3/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z;->b:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/z;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/z;->d:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher3/z;->e:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/z;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/z;->b:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/z;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/z;->d:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/z;->e:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/Launcher;->i(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/z;->b:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/z;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/z;->d:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/z;->e:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/Launcher;->f(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
