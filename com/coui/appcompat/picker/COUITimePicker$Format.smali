.class Lcom/coui/appcompat/picker/COUITimePicker$Format;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUITimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Format"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUITimePicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUITimePicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->k:Ljava/util/Date;

    iget-wide v2, v0, Lcom/coui/appcompat/picker/COUITimePicker;->j:J

    int-to-long v4, p1

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUITimePicker;->k:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v5, v0, Lcom/coui/appcompat/picker/COUITimePicker;->f:I

    if-ne v3, v5, :cond_34

    iget v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->g:I

    if-ne v4, v3, :cond_34

    iget v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->h:I

    if-ne v1, v3, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    if-eqz v2, :cond_3a

    iput p1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->i:I

    goto :goto_3d

    :cond_3a
    const/4 v1, -0x1

    iput v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->i:I

    :goto_3d
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->e:Ljava/text/SimpleDateFormat;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUITimePicker;->k:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object v2, v1, Lcom/coui/appcompat/picker/COUITimePicker;->a:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aput-object v0, v2, v3

    iget v0, v1, Lcom/coui/appcompat/picker/COUITimePicker;->i:I

    if-ne p1, v0, :cond_62

    iget-object p0, v1, Lcom/coui/appcompat/picker/COUITimePicker;->m:[Ljava/lang/String;

    iget-object p1, v1, Lcom/coui/appcompat/picker/COUITimePicker;->o:Ljava/lang/String;

    aput-object p1, p0, v3

    aget-object p0, p0, v3

    return-object p0

    :cond_62
    const p1, 0x8001a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMMdd"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object v1, v1, Lcom/coui/appcompat/picker/COUITimePicker;->p:Ljava/lang/String;

    const-string v2, " E"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->k:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a:Lcom/coui/appcompat/picker/COUITimePicker;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->k:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
