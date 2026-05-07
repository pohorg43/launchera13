.class public Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;
.super Lcom/oplus/fancyicon/data/binder/VariableBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;,
        Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;,
        Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;,
        Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final FAILED_UPDATE_INTERNAL:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final MISSED_CALL_SETTING:Ljava/lang/String; = "oplus_customize_missed_calls_number"

.field public static final MMS_MISSED_CALL_COUNT_URI:Ljava/lang/String; = "content://settings/system/oplus_customize_missed_calls_number"

.field public static final MMS_UNREAD_COUNT_URI:Ljava/lang/String; = "content://settings/system/oplus_customize_unread_mms_number"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"

.field private static final TIME_SECOND:J = 0x3e8L

.field private static final UNREAD_SMS_SETTING:Ljava/lang/String; = "oplus_customize_unread_mms_number"

.field private static final UPDATE_VARIABLE_WHEN_DATE_IS_NULL_DELAY_TIME:I = 0xc8


# instance fields
.field public mArgs:[Ljava/lang/String;

.field private final mChangeObserver:Landroid/database/ContentObserver;

.field public mColumns:[Ljava/lang/String;

.field public mCountName:Ljava/lang/String;

.field private mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private final mCursorLock:Ljava/lang/Object;

.field private mDelayUpdateVariablesCursor:Landroid/database/Cursor;

.field private mDelayUpdateVariablesRunnable:Ljava/lang/Runnable;

.field private mDependency:Ljava/lang/String;

.field private mFaileUpdater:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHasSuccessQueryOnce:Z

.field private mLastQueryTime:J

.field private mLastUri:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field private mNeedsRequery:Z

.field public mOrder:Ljava/lang/String;

.field private final mQueryCompletedListener:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;

.field private mTryTimeWhenFailed:I

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field public mUri:Ljava/lang/String;

.field public final mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;",
            ">;"
        }
    .end annotation
.end field

.field public mWhereFormatter:Lcom/oplus/fancyicon/util/TextFormatter;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/VariableBinder;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    new-instance v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$1;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$1;-><init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mChangeObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHasSuccessQueryOnce:Z

    iput v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mTryTimeWhenFailed:I

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mQueryCompletedListener:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;

    :try_start_34
    new-instance p2, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;

    invoke-direct {p2, p1, p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;-><init>(Landroid/content/Context;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mQueryHandler:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception p0

    const-string p1, "new QueryHandler error. e = "

    const-string p2, "ContentProviderBinder"

    invoke-static {p1, p0, p2}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;)V

    invoke-virtual {p0, p1, p4}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->updateVariablesAndRequestRender(Landroid/database/Cursor;)V

    return-void
.end method

.method private checkUpdate()V
    .registers 9

    iget v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    if-lez v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mLastQueryTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_21

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->startQuery()V

    const-wide/16 v0, 0x0

    :cond_21
    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    int-to-long v6, p0

    mul-long/2addr v6, v4

    sub-long/2addr v6, v0

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    return-void
.end method

.method private declared-synchronized checkUpdateWhenFailed()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mFaileUpdater:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    new-instance v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$4;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$4;-><init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mFaileUpdater:Ljava/lang/Runnable;

    :cond_c
    iget v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mTryTimeWhenFailed:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2b

    const-string v0, "ContentProviderBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUpdateWhenFailed mTryTimeWhenFailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mTryTimeWhenFailed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_43

    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mQueryHandler:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mFaileUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mFaileUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mTryTimeWhenFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mTryTimeWhenFailed:I
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_43

    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "Variable"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_24

    new-instance v2, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v4}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {p0, v2}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->addVariable(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    return-void
.end method

.method private registerObserver(Z)V
    .registers 4

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    const-string v0, "content://sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    const-string p1, "content://settings/system/oplus_customize_unread_mms_number"

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    goto :goto_20

    :cond_12
    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    const-string v1, "content://call_log"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_20

    const-string p1, "content://settings/system/oplus_customize_missed_calls_number"

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    :cond_20
    :goto_20
    :try_start_20
    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_36} :catch_37

    goto :goto_5e

    :catch_37
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerObserver,e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderBinder"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_4f
    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_5e
    return-void
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_162

    :try_start_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_162

    :cond_11
    const-string v4, "ContentProviderBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query result count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz v4, :cond_39

    int-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_39
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->updateVariablesRow(Landroid/database/Cursor;)V

    iget-object v0, v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_183

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;

    iget v5, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mRow:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mColumn:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->getActualQueryColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_185

    :try_start_5c
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "ContentProviderBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVariables: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "name:%s type:%s row:%d column:%s value:%s"

    const/4 v11, 0x5

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v13

    iget v13, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mRow:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v12, v15

    const/4 v13, 0x3

    aput-object v5, v12, v13

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x4

    aput-object v16, v12, v14

    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeInt()I

    move-result v7

    if-eq v7, v15, :cond_11d

    if-eq v7, v13, :cond_113

    if-eq v7, v14, :cond_109

    if-eq v7, v11, :cond_ff

    const/4 v8, 0x6

    if-eq v7, v8, :cond_f6

    const/16 v8, 0x3e9

    if-eq v7, v8, :cond_da

    const-string v6, "ContentProviderBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalide type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->getTypeStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0, v6}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->setNull(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    goto/16 :goto_42

    :cond_da
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    iget-object v7, v1, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0, v7}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->getImageElement(Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    move-result-object v7

    array-length v8, v6

    const/4 v9, 0x0

    invoke-static {v6, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v7, :cond_ef

    invoke-virtual {v7, v6}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_ef
    iget-object v6, v1, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0, v6}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->setNull(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    goto/16 :goto_42

    :cond_f6
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setDoubleValue(D)V

    goto/16 :goto_42

    :cond_ff
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setDoubleValue(D)V

    goto/16 :goto_42

    :cond_109
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setDoubleValue(D)V

    goto/16 :goto_42

    :cond_113
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setDoubleValue(D)V

    goto/16 :goto_42

    :cond_11d
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setStringValue(Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5c .. :try_end_124} :catch_149
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_124} :catch_130
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_124} :catch_126
    .catchall {:try_start_5c .. :try_end_124} :catchall_185

    goto/16 :goto_42

    :catch_126
    move-exception v0

    :try_start_127
    const-string v5, "ContentProviderBinder"

    const-string v6, "failed to get value from cursor"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    :catch_130
    move-exception v0

    const-string v6, "ContentProviderBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "column does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    :catch_149
    move-exception v0

    const-string v6, "ContentProviderBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image blob column decode error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    :cond_162
    :goto_162
    iget-object v0, v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz v0, :cond_16b

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_16b
    iget-object v0, v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_171
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_183

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;

    iget-object v4, v1, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2, v4}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->setNull(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    goto :goto_171

    :cond_183
    monitor-exit v3

    return-void

    :catchall_185
    move-exception v0

    monitor-exit v3
    :try_end_187
    .catchall {:try_start_127 .. :try_end_187} :catchall_185

    throw v0
.end method

.method private updateVariablesAndRequestRender(Landroid/database/Cursor;)V
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_30
    .catchall {:try_start_8 .. :try_end_10} :catchall_2e

    if-eqz p1, :cond_62

    :try_start_12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
    .catchall {:try_start_12 .. :try_end_15} :catchall_82

    goto :goto_62

    :catch_16
    move-exception p0

    :try_start_17
    const-string p1, "ContentProviderBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVariablesAndRequestRender error. e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2a
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_82

    goto :goto_62

    :catchall_2e
    move-exception p0

    goto :goto_64

    :catch_30
    move-exception p0

    :try_start_31
    const-string v1, "ContentProviderBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVariablesAndRequestRender error. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_2e

    if-eqz p1, :cond_62

    :try_start_49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_82

    goto :goto_62

    :catch_4d
    move-exception p0

    :try_start_4e
    const-string p1, "ContentProviderBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVariablesAndRequestRender error. e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    :cond_62
    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_82

    return-void

    :goto_64
    if-eqz p1, :cond_81

    :try_start_66
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a
    .catchall {:try_start_66 .. :try_end_69} :catchall_82

    goto :goto_81

    :catch_6a
    move-exception p1

    :try_start_6b
    const-string v1, "ContentProviderBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVariablesAndRequestRender error. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    throw p0

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_82

    throw p0
.end method


# virtual methods
.method public addVariable(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelQuery()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mQueryHandler:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;

    if-eqz p0, :cond_9

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    :cond_9
    return-void
.end method

.method public createCountVar()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    :cond_6
    new-instance v1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    move-object v0, v1

    :goto_12
    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    return-void
.end method

.method public getActualQueryColumn(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public getDependency()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDependency:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->init()V

    iget v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->registerObserver(Z)V

    :cond_c
    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->startQuery()V

    :cond_19
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    if-eqz p1, :cond_b7

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    const-string p2, "name"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mName:Ljava/lang/String;

    const-string p2, "dependency"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDependency:Ljava/lang/String;

    const-string p2, "columns"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ","

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    move-object p2, v2

    goto :goto_29

    :cond_25
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_29
    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    new-instance p2, Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v0, "where"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "whereFormat"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "whereParas"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "whereExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v0, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v7

    const-string v0, "whereFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v0, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v8

    iget-object v9, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mWhereFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    const-string p2, "order"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    move-object p2, v2

    :cond_6c
    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mOrder:Ljava/lang/String;

    const-string p2, "args"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    move-object p2, v2

    goto :goto_80

    :cond_7c
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_80
    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    const-string p2, "countName"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    goto :goto_90

    :cond_8f
    move-object v2, p2

    :goto_90
    iput-object v2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v2, :cond_a1

    new-instance p2, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_a1
    const/4 p2, -0x1

    const-string v0, "updateInterval"

    invoke-static {p1, v0, p2}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    if-lez p2, :cond_b3

    new-instance p2, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$2;

    invoke-direct {p2, p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$2;-><init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    :cond_b3
    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void

    :cond_b7
    const-string p0, "ContentProviderBinder"

    const-string p1, "ContentProviderBinder node is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    const-string p1, "node is null"

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onContentChanged()V
    .registers 3

    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadStoped:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadPaused:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mNeedsRequery:Z

    goto :goto_16

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->startQuery()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadStoped:Z

    const-string v1, "ContentProviderBinder"

    if-nez v0, :cond_61

    const/4 v0, 0x1

    if-eqz p1, :cond_45

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1c
    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3f

    new-instance v1, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$3;-><init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mDelayUpdateVariablesCursor:Landroid/database/Cursor;

    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_42

    :cond_3f
    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->updateVariablesAndRequestRender(Landroid/database/Cursor;)V

    :goto_42
    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHasSuccessQueryOnce:Z

    goto :goto_57

    :cond_45
    const-string p1, "onQueryComplete query failed,cursor is null"

    invoke-static {v1, p1}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHasSuccessQueryOnce:Z

    if-nez p1, :cond_57

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mNeedsRequery:Z

    iget p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    if-gtz p1, :cond_57

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->checkUpdateWhenFailed()V

    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mQueryCompletedListener:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;

    if-eqz p1, :cond_6d

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_6d

    :cond_61
    if-eqz p1, :cond_6d

    :try_start_63
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6d

    :catch_67
    move-exception p0

    const-string p1, "onQueryComplete error. e = "

    invoke-static {p1, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 3

    iget v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdateInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->registerObserver(Z)V

    :cond_9
    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->onRenderThreadStoped()V

    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->pause()V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryData(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object v0, p0

    const-string v1, "startQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start query: uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "ContentProviderBinder"

    invoke-static {v12, v2}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1a
    iget-object v4, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mQueryHandler:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;

    if-eqz v4, :cond_2d

    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :cond_2d
    iget-object v2, v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_46} :catch_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_46} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_47

    goto :goto_66

    :catch_47
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :catch_5d
    move-exception v0

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_62
    move-exception v0

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_66
    return-void
.end method

.method public refresh()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->resume()V

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->startQuery()V

    :cond_a
    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method public startQuery()V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mNeedsRequery:Z

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->cancelQuery()V

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "datahub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    const-string v2, "content://settings/system/oplus_customize_unread_mms_number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz v1, :cond_41

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oplus_customize_unread_mms_number"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    goto :goto_85

    :cond_41
    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mUri:Ljava/lang/String;

    const-string v2, "content://settings/system/oplus_customize_missed_calls_number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz v1, :cond_69

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oplus_customize_missed_calls_number"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    goto :goto_85

    :cond_69
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mWhereFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/util/TextFormatter;->getText(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mOrder:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->queryData(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method public updateVariablesRow(Landroid/database/Cursor;)V
    .registers 2

    return-void
.end method
