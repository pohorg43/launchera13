.class public final synthetic Lcom/android/launcher/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/s;->a:I

    iput-object p2, p0, Lcom/android/launcher/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher/s;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher/s;->a:I

    iget-object v1, p0, Lcom/android/launcher/s;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/s;->c:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/Launcher;->P(ILjava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method
