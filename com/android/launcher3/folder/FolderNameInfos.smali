.class public Lcom/android/launcher3/folder/FolderNameInfos;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ERROR_ALL_APP_LOOKUP_FAILED:I = 0x20

.field public static final ERROR_ALL_LABEL_LOOKUP_FAILED:I = 0x100

.field public static final ERROR_APP_LOOKUP_FAILED:I = 0x10

.field public static final ERROR_LABEL_LOOKUP_FAILED:I = 0x80

.field public static final ERROR_NO_LABELS_GENERATED:I = 0x40

.field public static final ERROR_NO_PACKAGES:I = 0x200

.field public static final ERROR_NO_PROVIDER:I = 0x8

.field public static final HAS_PRIMARY:I = 0x2

.field public static final HAS_SUGGESTIONS:I = 0x4

.field public static final SUCCESS:I = 0x1


# instance fields
.field private final mLabels:[Ljava/lang/CharSequence;

.field private final mScores:[Ljava/lang/Float;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    return-void
.end method

.method public static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/FolderNameInfos;->lambda$contains$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$contains$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/CharSequence;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/common/util/u;->d:Lcom/android/common/util/u;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/badge/f;

    invoke-direct {v0, p1}, Lcom/android/launcher/badge/f;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public getLabels()[Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getScores()[Ljava/lang/Float;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    return-object p0
.end method

.method public hasPrimary()Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-lez v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    aget-object p0, p0, v1

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public hasSuggestions()Z
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    if-eqz v3, :cond_13

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    return v1
.end method

.method public setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v0

    if-ge p1, v1, :cond_b

    aput-object p2, v0, p1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    aput-object p3, p0, p1

    :cond_b
    return-void
.end method

.method public setStatus(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    return-void
.end method

.method public status()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo p0, "status=%s, labels=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
