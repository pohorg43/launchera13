.class public Lcom/oplus/fancyicon/elements/text/TextScreenElement;
.super Lcom/oplus/fancyicon/elements/AnimatedScreenElement;
.source ""


# static fields
.field private static final ATTRIBUTES_4:I = 0x4

.field private static final ATTRIBUTES_7:I = 0x7

.field private static final BUFFER_SIZE:I = 0x2004

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x1e

.field private static final MARQUEE_GAP_POSITION:I = 0x4

.field private static final MIN_SHADOW_ALPHA:I = 0xbb

.field private static final NUM_10:I = 0xa

.field private static final NUM_20:I = 0x14

.field private static final PADDING:I = 0x32

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field private static final TIME_SECOND:I = 0x3e8

.field private static sTypefaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static sTypefacesModifyTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorParser:Lcom/oplus/fancyicon/util/ColorParser;

.field private mFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

.field private mLetterSpacingExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreText:Ljava/lang/String;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSizeExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTypeFaceStr:Ljava/lang/String;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefaces:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefacesModifyTime:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    const p2, 0x7f7fffff  # Float.MAX_VALUE

    iput p2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    iget-boolean p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz p1, :cond_38

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "text_width"

    invoke-direct {p1, p2, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "text_height"

    invoke-direct {p1, p2, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_38
    return-void
.end method

.method public static clearFontCache()V
    .registers 2

    const-string v0, "TextScreenElement"

    const-string v1, "clearFontCache "

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefacesModifyTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private extractTypeface(Ljava/lang/String;)Ljava/io/File;
    .registers 13

    const-string v0, "TextScreenElement"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/.font"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_46

    const-string p0, "extractTypeface mkdirs error"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/File;

    sget-object v2, Lcom/oplus/fancyicon/content/res/ThemeConstants;->SYSTEM_TYPEFACE_PATH:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2c} :catch_d7
    .catchall {:try_start_3 .. :try_end_2c} :catchall_d4

    if-eqz p1, :cond_3a

    :try_start_2e
    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_3a
    :try_start_3a
    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_41
    move-exception p0

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_46
    :try_start_46
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [J

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_58} :catch_d7
    .catchall {:try_start_46 .. :try_end_58} :catchall_d4

    :try_start_58
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_75

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    aget-wide v8, v2, v5
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_65} :catch_ce
    .catchall {:try_start_58 .. :try_end_65} :catchall_c9

    cmp-long v2, v6, v8

    if-nez v2, :cond_75

    :try_start_69
    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_70

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catchall_70
    move-exception p0

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_75
    if-nez p0, :cond_9c

    :try_start_77
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/oplus/fancyicon/content/res/ThemeConstants;->SYSTEM_TYPEFACE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_82} :catch_ce
    .catchall {:try_start_77 .. :try_end_82} :catchall_c9

    if-eqz p1, :cond_90

    :try_start_84
    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_8b

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_8b
    move-exception p0

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_90
    :try_start_90
    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_97

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_97
    move-exception p0

    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_9c
    :try_start_9c
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a1} :catch_ce
    .catchall {:try_start_9c .. :try_end_a1} :catchall_c9

    const/16 v2, 0x2004

    :try_start_a3
    new-array v2, v2, [B

    :goto_a5
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_af

    invoke-virtual {p1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a5

    :cond_af
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b2} :catch_c3
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_be

    :try_start_b2
    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b9

    invoke-static {p1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catchall_b9
    move-exception p0

    invoke-static {p1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catchall_be
    move-exception v0

    move-object v1, p0

    move-object v2, p1

    move-object p0, v0

    goto :goto_fc

    :catch_c3
    move-exception v2

    move-object v10, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v10

    goto :goto_da

    :catchall_c9
    move-exception p1

    move-object v2, v1

    move-object v1, p0

    move-object p0, p1

    goto :goto_fc

    :catch_ce
    move-exception p1

    move-object v2, v1

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_da

    :catchall_d4
    move-exception p0

    move-object v2, v1

    goto :goto_fc

    :catch_d7
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    :goto_da
    :try_start_da
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy mTypeface file failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_da .. :try_end_ee} :catchall_fa

    :try_start_ee
    invoke-static {p1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f5

    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_f5
    move-exception p0

    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catchall_fa
    move-exception p0

    move-object v1, p1

    :goto_fc
    :try_start_fc
    invoke-static {v1}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_103

    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catchall_103
    move-exception p0

    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    sget-object v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement$1;->$SwitchMap$com$oplus$fancyicon$elements$ScreenElement$Align:[I

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlign:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_13
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method private getTypeFace()Landroid/graphics/Typeface;
    .registers 8

    const-string v0, "TextScreenElement"

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    return-object v2

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->extractTypeface(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1a

    return-object v2

    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-object v4, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefaces:Ljava/util/Map;

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_41

    sget-object v5, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefacesModifyTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-nez v5, :cond_41

    iput-object v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeface:Landroid/graphics/Typeface;

    return-object v4

    :cond_41
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_8f

    sget-object v4, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefaces:Ljava/util/Map;

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->sTypefacesModifyTime:Ljava/util/Map;

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTypeFace save typeface to FontCache,name = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "current = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_79} :catch_7a

    goto :goto_8f

    :catch_7a
    move-exception v1

    const-string v2, "getTypeFace failed "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private setPaintTypeFace()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_b
    return-void
.end method

.method private updateTextSize()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSizeExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextSize:F

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_13
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mLetterSpacingExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide v2

    double-to-float p0, v2

    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_21
    return-void
.end method

.method private updateTextWidth()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->updateTextSize()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextWidth:F

    iget-boolean v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->descale(F)F

    move-result p0

    float-to-double v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_23
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 16

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ic_launcher_calender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getForegroundScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2c
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_3d
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getAlpha()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootAlpha()I

    move-result v3

    mul-int/2addr v3, v0

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    if-le v0, v3, :cond_6e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowRadius:F

    goto :goto_6f

    :cond_6a
    iget v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowRadius:F

    div-float/2addr v0, v1

    goto :goto_6f

    :cond_6e
    move v0, v4

    :goto_6f
    iget v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowDx:F

    iget v3, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowDy:F

    iget v5, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowColor:I

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->setPaintTypeFace()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    cmpg-float v1, v0, v4

    if-ltz v1, :cond_89

    iget v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextWidth:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8b

    :cond_89
    iget v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextWidth:F

    :cond_8b
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    cmpg-float v3, v1, v4

    if-gez v3, :cond_9e

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_9e

    move v1, v2

    :cond_9e
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getX()F

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->getLeft(FF)F

    move-result v3

    cmpl-float v5, v1, v4

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getY()F

    move-result v6

    if-lez v5, :cond_b2

    invoke-virtual {p0, v6, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->getTop(FF)F

    move-result v6

    :cond_b2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    cmpl-float v7, v0, v4

    if-lez v7, :cond_c8

    if-lez v5, :cond_c8

    const/high16 v5, 0x41200000  # 10.0f

    sub-float v5, v6, v5

    add-float v7, v3, v0

    const/high16 v8, 0x41a00000  # 20.0f

    add-float/2addr v8, v6

    add-float/2addr v8, v1

    invoke-virtual {p1, v3, v5, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_c8
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_fd

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    :goto_d1
    if-ge v0, v1, :cond_129

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v9

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v10

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v4

    add-float v11, v4, v3

    add-float v4, v6, v2

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    add-float v12, v4, v5

    iget-object v13, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_fd
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    iget v5, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    const v7, 0x7f7fffff  # Float.MAX_VALUE

    cmpl-float v7, v5, v7

    if-nez v7, :cond_109

    goto :goto_10a

    :cond_109
    move v4, v5

    :goto_10a
    add-float/2addr v4, v3

    add-float/2addr v6, v2

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    iget v2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextWidth:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextSize:F

    iget v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueeGap:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_129

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    add-float/2addr v3, v2

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v6, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getColor()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mColorParser:Lcom/oplus/fancyicon/util/ColorParser;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/util/ColorParser;->getColor(Lcom/oplus/fancyicon/data/Variables;)I

    move-result p0

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/util/TextFormatter;->getFormat(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/util/TextFormatter;->getText(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->init()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->updateTextWidth()V

    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_190

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/util/TextFormatter;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v2, "gradient"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "\\|"

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-nez v3, :cond_9c

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_25
    aget-object v3, v2, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    invoke-virtual {v0, v10, v11}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v13

    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    invoke-virtual {v0, v10, v11}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v14

    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    invoke-virtual {v0, v10, v11}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v15

    aget-object v3, v2, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    invoke-virtual {v0, v10, v11}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v16

    aget-object v3, v2, v8

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    array-length v10, v2

    const/4 v11, 0x7

    if-ne v10, v11, :cond_8f

    const/4 v10, 0x6

    aget-object v2, v2, v10

    const-string v10, "clamp"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_81
    move-object/from16 v19, v2

    goto :goto_91

    :cond_84
    const-string v10, "repeat"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_81

    :cond_8f
    move-object/from16 v19, v3

    :goto_91
    iget-object v2, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/graphics/LinearGradient;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_9c} :catch_9c

    :catch_9c
    :cond_9c
    const-string v2, "shadow"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/high16 v10, 0x3f800000  # 1.0f

    if-nez v3, :cond_109

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/oplus/fancyicon/R$color;->text_screen_element_shadow_color:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :try_start_be
    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v11, v6

    invoke-virtual {v0, v11, v12}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v6

    iput v6, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowRadius:F

    aget-object v6, v2, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v11, v6

    invoke-virtual {v0, v11, v12}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v6

    iput v6, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowDx:F

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v5

    iput v5, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowDy:F

    array-length v5, v2

    if-ne v5, v8, :cond_fb

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_fc

    :cond_fb
    move v2, v3

    :goto_fc
    iput v2, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowColor:I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_fe} :catch_ff

    goto :goto_109

    :catch_ff
    const/high16 v2, 0x40000000  # 2.0f

    iput v2, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowRadius:F

    iput v10, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowDx:F

    iput v10, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowDy:F

    iput v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShadowColor:I

    :cond_109
    :goto_109
    const-string v2, "typeface"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTypeFaceStr:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->setPaintTypeFace()V

    const-string v2, "size"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v2, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSizeExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v2, "marqueeSpeed"

    invoke-static {v1, v2, v9}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueeSpeed:I

    const-string v2, "bold"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "spacingMult"

    invoke-static {v1, v3, v10}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    iput v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSpacingMult:F

    const/4 v3, 0x0

    const-string v4, "spacingAdd"

    invoke-static {v1, v4, v3}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    iput v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSpacingAdd:F

    const-string v3, "marqueeGap"

    invoke-static {v1, v3, v8}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueeGap:I

    const-string v3, "multiLine"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMultiLine:Z

    const-string v3, "letterSpacing"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v3, v4}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mLetterSpacingExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41900000  # 18.0f

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-static/range {p1 .. p1}, Lcom/oplus/fancyicon/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Lcom/oplus/fancyicon/util/ColorParser;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mColorParser:Lcom/oplus/fancyicon/util/ColorParser;

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-nez v1, :cond_18f

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_18f
    return-void

    :cond_190
    const-string v0, "TextScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    invoke-direct {v0, v1}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRenderThreadStoped()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->onRenderThreadStoped()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSetText:Ljava/lang/String;

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->onVisibilityChange(Z)V

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    const/high16 p1, 0x41f00000  # 30.0f

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateFramerate(F)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSetText:Ljava/lang/String;

    return-void
.end method

.method public tick(J)V
    .registers 14

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->tick(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShouldMarquee:Z

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    goto/16 :goto_b5

    :cond_1e
    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->updateTextWidth()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const v4, 0x7f7fffff  # Float.MAX_VALUE

    if-lez v3, :cond_a8

    iget v3, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextWidth:F

    cmpl-float v5, v3, v0

    if-lez v5, :cond_a8

    iget-boolean v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMultiLine:Z

    if-eqz v1, :cond_77

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPreText:Ljava/lang/String;

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ac

    :cond_45
    iget-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPreText:Ljava/lang/String;

    new-instance p1, Landroid/text/StaticLayout;

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    float-to-int v6, v0

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v7

    iget v8, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSpacingMult:F

    iget v9, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mSpacingAdd:F

    const/4 v10, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-boolean p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz p2, :cond_ac

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->descale(F)F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    goto :goto_ac

    :cond_77
    iget v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueeSpeed:I

    if-lez v0, :cond_ac

    iget v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_86

    const/high16 v0, 0x42480000  # 50.0f

    iput v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    goto :goto_a2

    :cond_86
    int-to-long v4, v0

    iget-wide v6, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPreviousTime:J

    sub-long v6, p1, v6

    mul-long/2addr v6, v4

    long-to-float v0, v6

    const/high16 v4, 0x447a0000  # 1000.0f

    div-float/2addr v0, v4

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    neg-float v0, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a2

    iget v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextSize:F

    iget v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueeGap:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    :cond_a2
    :goto_a2
    iput-wide p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mPreviousTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShouldMarquee:Z

    goto :goto_ac

    :cond_a8
    iput-object v1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iput v4, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mMarqueePos:F

    :cond_ac
    :goto_ac
    iget-boolean p1, p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->mShouldMarquee:Z

    if-eqz p1, :cond_b2

    const/high16 v2, 0x41f00000  # 30.0f

    :cond_b2
    invoke-virtual {p0, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateFramerate(F)V

    :goto_b5
    return-void
.end method
