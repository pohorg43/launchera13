.class public final synthetic Lcom/android/launcher3/n1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/n1;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/n1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/n1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/n1;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/n1;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/n1;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->Y(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/n1;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/n1;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace;->w(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
