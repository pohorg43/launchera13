.class public final Lcom/android/wm/shell/bubbles/ShortcutKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final pkg:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/wm/shell/bubbles/ShortcutKey;ILjava/lang/String;ILjava/lang/Object;)Lcom/android/wm/shell/bubbles/ShortcutKey;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/ShortcutKey;->copy(ILjava/lang/String;)Lcom/android/wm/shell/bubbles/ShortcutKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lcom/android/wm/shell/bubbles/ShortcutKey;
    .registers 3

    const-string p0, "pkg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/wm/shell/bubbles/ShortcutKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/wm/shell/bubbles/ShortcutKey;

    iget v1, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    iget v3, p1, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ShortcutKey(userId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
