.class public final synthetic Lcom/android/launcher/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:[Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[II)V
    .registers 5

    iput p4, p0, Lcom/android/launcher/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/r;->b:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/launcher/r;->c:[Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/android/launcher/r;->d:[I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher/r;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/r;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/launcher/r;->c:[Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/android/launcher/r;->d:[I

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/Launcher;->a0(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_13
    iget-object v0, p0, Lcom/android/launcher/r;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/launcher/r;->c:[Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/android/launcher/r;->d:[I

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/Launcher;->I(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
