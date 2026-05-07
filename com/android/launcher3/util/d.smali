.class public final synthetic Lcom/android/launcher3/util/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/UserHandle;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/HashSet;Z)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/util/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/d;->b:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/util/d;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/util/d;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/Set;ZI)V
    .registers 6

    iput p4, p0, Lcom/android/launcher3/util/d;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/d;->b:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/util/d;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/util/d;->d:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/util/d;->a:I

    packed-switch v0, :pswitch_data_34

    goto :goto_24

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/util/d;->b:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/util/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-boolean p0, p0, Lcom/android/launcher3/util/d;->d:Z

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/util/OplusItemInfoMatcherInjector;->a(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_15  #0x0
    iget-object v0, p0, Lcom/android/launcher3/util/d;->b:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/util/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-boolean p0, p0, Lcom/android/launcher3/util/d;->d:Z

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->c(Landroid/os/UserHandle;Ljava/util/Set;ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_24
    iget-object v0, p0, Lcom/android/launcher3/util/d;->b:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/util/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    iget-boolean p0, p0, Lcom/android/launcher3/util/d;->d:Z

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->e(Landroid/os/UserHandle;Ljava/util/HashSet;ZLcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
