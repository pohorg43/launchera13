.class public final Lcom/android/launcher3/ExtraLayoutParser;
.super Lcom/android/launcher3/DefaultLayoutParser;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/ExtraLayoutParser$Companion;
    }
.end annotation


# static fields
.field private static final CONTAINER_SHL_VAL:I = 0xc

.field public static final Companion:Lcom/android/launcher3/ExtraLayoutParser$Companion;

.field private static final SCREEN_SHL_VALUE:I = 0x8

.field private static final SCREEN_TYPE_ADD:I = -0x2

.field private static final SCREEN_TYPE_APPEND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ExtraLayoutParser"

.field private static final X_SHL_VALUE:I = 0x4


# instance fields
.field private mColumnCount:I

.field private mItemCountOneScreen:I

.field private mMaxItem:Landroid/content/ContentValues;

.field private mRowCount:I

.field private mScreenIndex:I

.field private mUpdatedRow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/ExtraLayoutParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/ExtraLayoutParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/ExtraLayoutParser;->Companion:Lcom/android/launcher3/ExtraLayoutParser$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;II)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceRes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mUpdatedRow:Landroid/util/SparseArray;

    iput p6, p0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    check-cast p3, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    add-int/lit8 p3, p3, -0x1

    invoke-static {p2, p3}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->getDefaultMaxItem(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/content/ContentValues;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mColumnCount:I

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p1, p0, Lcom/android/launcher3/ExtraLayoutParser;->mRowCount:I

    iget p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mColumnCount:I

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mItemCountOneScreen:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetHost;",
            "Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;",
            "Landroid/content/res/Resources;",
            "Ljava/util/function/Supplier<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceRes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialLayoutSupplier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;)V

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mUpdatedRow:Landroid/util/SparseArray;

    iput p6, p0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    check-cast p3, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    add-int/lit8 p3, p3, -0x1

    invoke-static {p2, p3}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->getDefaultMaxItem(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/content/ContentValues;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mColumnCount:I

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p1, p0, Lcom/android/launcher3/ExtraLayoutParser;->mRowCount:I

    iget p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mColumnCount:I

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/ExtraLayoutParser;->mItemCountOneScreen:I

    return-void
.end method

.method private final generateKeyBy(IIII)I
    .registers 6

    shl-int/lit8 p0, p4, 0xc

    shl-int/lit8 p4, p1, 0x8

    add-int/2addr p0, p4

    shl-int/lit8 p4, p2, 0x4

    add-int/2addr p0, p4

    add-int/2addr p0, p3

    const-string p4, "generateKeyBy: "

    const-string v0, ", "

    invoke-static {p4, p1, v0, p2, v0}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", hash = "

    const-string p4, "ExtraLayoutParser"

    invoke-static {p1, p3, p2, p0, p4}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private final loadExtraWorkspaceFromOldCota(Landroid/content/ContentValues;[I)Z
    .registers 7

    sget-object v0, Lcom/android/launcher/layout/LayoutPrefsUtils;->Companion:Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;

    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    const-string v3, "getInstance().curLauncherMode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;->getLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/layout/CustomLayoutHelper;->OLD_MY_CARRIER_EXTRA_LAYOUT_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "ExtraLayoutParser"

    const-string v1, "load extra_workspace form old cota package, the extra screen just use the new screen id."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    if-nez p2, :cond_34

    goto :goto_38

    :cond_34
    iget p0, p0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    aput p0, p2, p1

    :goto_38
    return p1

    :cond_39
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final adjustContentValuesBeforeInsert(Landroid/content/ContentValues;[I)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/ExtraLayoutParser;->loadExtraWorkspaceFromOldCota(Landroid/content/ContentValues;[I)Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    :cond_11
    const-string v2, "cellX"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "cellY"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "screen"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    const/4 v10, 0x0

    if-nez v9, :cond_43

    move-object v9, v10

    goto :goto_47

    :cond_43
    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    :goto_47
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v11, "container"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "origin values = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", mMaxItem = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", maxRowCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/launcher3/ExtraLayoutParser;->mRowCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", maxColumnCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/launcher3/ExtraLayoutParser;->mColumnCount:I

    const-string v14, "ExtraLayoutParser"

    invoke-static {v12, v13, v14}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v12, -0x2

    const/16 v13, -0x65

    const/4 v15, 0x1

    if-gt v8, v12, :cond_a9

    if-eq v11, v13, :cond_a9

    iget v0, v0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_a5

    goto/16 :goto_16f

    :cond_a5
    aput v2, p2, v15

    goto/16 :goto_16f

    :cond_a9
    const/4 v12, -0x1

    if-ne v8, v12, :cond_153

    if-eq v11, v13, :cond_153

    iget-object v6, v0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    if-nez v6, :cond_b4

    move-object v6, v10

    goto :goto_b8

    :cond_b4
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    :goto_b8
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    if-nez v8, :cond_c5

    move-object v8, v10

    goto :goto_c9

    :cond_c5
    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    :goto_c9
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v11, v0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    if-nez v11, :cond_d6

    move-object v11, v10

    goto :goto_dd

    :cond_d6
    const-string/jumbo v12, "spanX"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    :goto_dd
    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v0, Lcom/android/launcher3/ExtraLayoutParser;->mMaxItem:Landroid/content/ContentValues;

    if-nez v12, :cond_e9

    goto :goto_f0

    :cond_e9
    const-string/jumbo v10, "spanY"

    invoke-virtual {v12, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    :goto_f0
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v6, v11

    add-int v10, v6, v3

    iget v11, v0, Lcom/android/launcher3/ExtraLayoutParser;->mColumnCount:I

    if-gt v10, v11, :cond_11a

    sub-int/2addr v10, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_117

    goto :goto_149

    :cond_117
    aput v9, p2, v15

    goto :goto_149

    :cond_11a
    if-le v10, v11, :cond_149

    sub-int/2addr v6, v15

    add-int/2addr v6, v3

    rem-int v10, v6, v11

    div-int/2addr v6, v11

    add-int/2addr v8, v4

    sub-int/2addr v8, v15

    add-int/2addr v8, v6

    iget v4, v0, Lcom/android/launcher3/ExtraLayoutParser;->mRowCount:I

    if-lt v8, v4, :cond_12f

    iget v0, v0, Lcom/android/launcher3/ExtraLayoutParser;->mItemCountOneScreen:I

    div-int/2addr v3, v0

    add-int/2addr v3, v9

    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v8, v4

    :cond_12f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_147

    goto :goto_149

    :cond_147
    aput v9, p2, v15

    :cond_149
    :goto_149
    const-string v0, "Adding extra item for value = "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16f

    :cond_153
    iget-object v1, v0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v8, v3, v6, v11}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->checkItemExists(Landroid/database/sqlite/SQLiteDatabase;IIII)I

    move-result v1

    if-eq v1, v12, :cond_169

    iget-object v2, v0, Lcom/android/launcher3/ExtraLayoutParser;->mUpdatedRow:Landroid/util/SparseArray;

    invoke-direct {v0, v8, v3, v6, v11}, Lcom/android/launcher3/ExtraLayoutParser;->generateKeyBy(IIII)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_16f

    :cond_169
    const-string/jumbo v0, "this is a new item which will fill in the empty field or replace the existing one."

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16f
    return-void
.end method

.method public final getNewRankForExistingFolder(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->getExistingFolderMaxRank(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getNewScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/ExtraLayoutParser;->mScreenIndex:I

    return p0
.end method

.method public final getUpdateRowId(IIII)I
    .registers 8

    const-string v0, "getUpdateRowId: "

    const-string v1, ", "

    invoke-static {v0, p1, v1, p2, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ExtraLayoutParser"

    invoke-static {v0, p3, v1, p4, v2}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    if-lez p4, :cond_11

    return v0

    :cond_11
    iget-object v1, p0, Lcom/android/launcher3/ExtraLayoutParser;->mUpdatedRow:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/ExtraLayoutParser;->generateKeyBy(IIII)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string/jumbo p1, "need update row id = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2e
    return v0
.end method
