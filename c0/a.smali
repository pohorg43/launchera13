.class public final synthetic Lc0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lc0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc0/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lc0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc0/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    iget v0, p0, Lc0/a;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Lc0/a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object p0, p0, Lc0/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/data/FolderInfo;->g([Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :goto_13
    iget-object v0, p0, Lc0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    iget-object p0, p0, Lc0/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->e(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/util/PackageUserKey;I)Z

    move-result p0

    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
