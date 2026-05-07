.class public final Lcom/android/launcher3/appedit/AppEditLoaderCursor;
.super Landroid/database/CursorWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppEditLoaderCursor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/appedit/AppEditLoaderCursor$Companion;

.field private static final TAG:Ljava/lang/String; = "AppEditLoaderCursor"


# instance fields
.field private final mComponentNameIndex:I

.field private final mExIndex:I

.field private final mIconStatusIndex:I

.field private final mIdIndex:I

.field private final mModifiedIndex:I

.field private final mProfileIdIndex:I

.field private final mTitleIndex:I

.field private final mTittleStatusIndex:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppEditLoaderCursor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppEditLoaderCursor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->Companion:Lcom/android/launcher3/appedit/AppEditLoaderCursor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mIdIndex:I

    const-string p1, "componentName"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mComponentNameIndex:I

    const-string p1, "ex"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mExIndex:I

    const-string/jumbo p1, "modified"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mModifiedIndex:I

    const-string/jumbo p1, "title"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mTitleIndex:I

    const-string/jumbo p1, "profileId"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mProfileIdIndex:I

    const-string p1, "icon_status"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mIconStatusIndex:I

    const-string/jumbo p1, "tittle_status"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mTittleStatusIndex:I

    return-void
.end method


# virtual methods
.method public final getMComponentNameIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mComponentNameIndex:I

    return p0
.end method

.method public final getMExIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mExIndex:I

    return p0
.end method

.method public final getMIconStatusIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mIconStatusIndex:I

    return p0
.end method

.method public final getMIdIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mIdIndex:I

    return p0
.end method

.method public final getMModifiedIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mModifiedIndex:I

    return p0
.end method

.method public final getMProfileIdIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mProfileIdIndex:I

    return p0
.end method

.method public final getMTitleIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mTitleIndex:I

    return p0
.end method

.method public final getMTittleStatusIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->mTittleStatusIndex:I

    return p0
.end method

.method public moveToNext()Z
    .registers 3

    :try_start_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result p0
    :try_end_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_12

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppEdit"

    const-string v1, "AppEditLoaderCursor"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_12
    return p0
.end method
