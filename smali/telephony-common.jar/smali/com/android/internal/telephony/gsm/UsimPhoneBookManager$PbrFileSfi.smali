.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFileSfi"
.end annotation


# instance fields
.field mSfiFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1308
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    .line 1311
    const/4 v1, 0x0

    .line 1312
    .local v1, "recNum":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1313
    .local v3, "record":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1314
    .local v2, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1317
    .end local v2    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v3    # "record":[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V
    .locals 9
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p3, "parentTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v8, 0xa9

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1344
    const/4 v3, 0x0

    .line 1346
    .local v3, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    .line 1347
    .local v2, "tag":I
    if-ne p3, v8, :cond_1

    const/16 v4, 0xc4

    if-ne v2, v4, :cond_1

    .line 1348
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 1349
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 1352
    :cond_1
    if-ne p3, v8, :cond_2

    const/16 v4, 0xca

    if-ne v2, v4, :cond_2

    .line 1353
    # setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$202(Z)Z

    .line 1354
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$302(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 1356
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 1380
    :cond_3
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 1381
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1382
    return-void

    .line 1369
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1370
    .local v0, "data":[B
    if-eqz v0, :cond_3

    .line 1371
    array-length v4, v0

    if-le v4, v7, :cond_4

    .line 1372
    aget-byte v4, v0, v7

    and-int/lit16 v1, v4, 0xff

    .line 1373
    .local v1, "sfi":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1375
    .end local v1    # "sfi":I
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1356
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "recNum"    # I

    .prologue
    .line 1323
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1325
    .local v3, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1326
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    .line 1337
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1338
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    return-void

    .line 1330
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1331
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 1332
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1333
    .local v2, "tlvEf":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V

    goto :goto_0

    .line 1326
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method