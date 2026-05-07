.class public final Lcom/android/launcher3/card/theme/data/ReplaceAction;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final src:Lcom/android/launcher3/card/theme/data/SrcDescription;

.field private final target:Lcom/android/launcher3/card/theme/data/TargetDescription;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/SrcDescription;Lcom/android/launcher3/card/theme/data/TargetDescription;)V
    .registers 4

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/ReplaceAction;Lcom/android/launcher3/card/theme/data/SrcDescription;Lcom/android/launcher3/card/theme/data/TargetDescription;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/ReplaceAction;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->copy(Lcom/android/launcher3/card/theme/data/SrcDescription;Lcom/android/launcher3/card/theme/data/TargetDescription;)Lcom/android/launcher3/card/theme/data/ReplaceAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/android/launcher3/card/theme/data/SrcDescription;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    return-object p0
.end method

.method public final component2()Lcom/android/launcher3/card/theme/data/TargetDescription;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    return-object p0
.end method

.method public final copy(Lcom/android/launcher3/card/theme/data/SrcDescription;Lcom/android/launcher3/card/theme/data/TargetDescription;)Lcom/android/launcher3/card/theme/data/ReplaceAction;
    .registers 3

    const-string/jumbo p0, "src"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/ReplaceAction;-><init>(Lcom/android/launcher3/card/theme/data/SrcDescription;Lcom/android/launcher3/card/theme/data/TargetDescription;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/ReplaceAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/ReplaceAction;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getSrc()Lcom/android/launcher3/card/theme/data/SrcDescription;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    return-object p0
.end method

.method public final getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/TargetDescription;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ReplaceAction(src="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->src:Lcom/android/launcher3/card/theme/data/SrcDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ReplaceAction;->target:Lcom/android/launcher3/card/theme/data/TargetDescription;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
